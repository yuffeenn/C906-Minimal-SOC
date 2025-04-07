module apb_to_reg #(  
    parameter ADDR_WIDTH = 6,
    parameter DATA_WIDTH = 32
) (  
    input  wire                     pclk,
    input  wire                     presetn,
    input  wire [ADDR_WIDTH-1:0]    paddr, 
    input  wire                     psel, 
    input  wire                     penable, 
    input  wire                     pwrite, 
    input  wire [DATA_WIDTH-1:0]    pwdata,
    output reg  [DATA_WIDTH-1:0]    prdata,
    output reg                      pready,
    output reg                      pslverr
);  

    localparam NUM_REGS = 16;
    reg [DATA_WIDTH-1:0] registers[0:NUM_REGS-1];  
     
    localparam IDLE = 1'b0;  
    localparam ACCESS = 1'b1;  
    reg state;  
    
    wire [3:0] reg_addr = paddr[5:2]; 
    
    always @(posedge pclk or negedge presetn) begin  
        if (!presetn) begin  
            state <= IDLE;  
            pready <= 1'b0;  
            pslverr <= 1'b0;  
            prdata <= {DATA_WIDTH{1'b0}};  
            for (integer j = 0; j < NUM_REGS; j = j + 1) begin  
                registers[j] <= {DATA_WIDTH{1'b0}};  
            end  
        end else begin  
            pslverr <= 1'b0;
            case (state)  
                IDLE: begin  
                    if (psel && !penable) begin  
                        state <= ACCESS;  
                    end  
                end  
                ACCESS: begin  
                    pready <= 1'b1;
                    if (psel && penable) begin  
                        if (pwrite) begin
                            registers[reg_addr] <= pwdata; 
                        end
                        else begin
                            prdata <= registers[reg_addr];  
                        end
                        state <= IDLE;  
                    end  
                end  
                default: state <= IDLE;  
            endcase  
            if (!psel) begin  
                pready <= 1'b0;  
            end  
        end  
    end  
endmodule  