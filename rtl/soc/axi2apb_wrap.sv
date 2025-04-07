module axi2apb_wrap  
    #(parameter AXI_WIDTH_SID  = 4,    // ID width in bits  
      parameter AXI_WIDTH_AD   = 32,   // address width  
      parameter AXI_WIDTH_DA   = 32,   // data width    
      parameter WIDTH_PAD      = 32,   // address width  
      parameter WIDTH_PDA      = 32,   // data width  
      parameter ADDR_PBASE0    = 32'hC0000000,   
      parameter ADDR_PLENGTH0  = 16,  
      parameter ADDR_PBASE1    = 32'hC0001000,   
      parameter ADDR_PLENGTH1  = 16,  
      parameter CLOCK_RATIO    = 2'b00 // 0=1:1, 3=async  
     )  
(  
    input wire                  ARESETn,  
    input wire                  ACLK,  
    input wire                  PRESETn,  
    input wire                  PCLK,  
    AXI_BUS.Slave               AXI_SLAVE,  
    output wire [WIDTH_PAD-1:0] M_PADDR,  
    output wire                 M_PENABLE,  
    output wire                 M_PWRITE,  
    output wire [WIDTH_PDA-1:0] M_PWDATA,  
    output wire                 M0_PSEL,  
    input wire  [WIDTH_PDA-1:0] M0_PRDATA,  
    input wire                  M0_PREADY,  
    input wire                  M0_PSLVERR,  
    output wire                 M1_PSEL,  
    input wire  [WIDTH_PDA-1:0] M1_PRDATA,  
    input wire                  M1_PREADY,  
    input wire                  M1_PSLVERR  
);  

    axi2apb #(  
        .AXI_WIDTH_SID (AXI_WIDTH_SID),  
        .AXI_WIDTH_AD  (AXI_WIDTH_AD),  
        .AXI_WIDTH_DA  (AXI_WIDTH_DA),    
        .WIDTH_PAD     (WIDTH_PAD),  
        .WIDTH_PDA     (WIDTH_PDA),  
        .ADDR_PBASE0   (ADDR_PBASE0),  
        .ADDR_PLENGTH0 (ADDR_PLENGTH0),  
        .ADDR_PBASE1   (ADDR_PBASE1),  
        .ADDR_PLENGTH1 (ADDR_PLENGTH1),  
        .CLOCK_RATIO   (CLOCK_RATIO)  
    ) u_axi2apb (  
        // 系统和时钟信号  
        .ARESETn       (ARESETn),  
        .ACLK          (ACLK),  
        .PRESETn       (PRESETn),  
        .PCLK          (PCLK),  
        
        // AXI接口连接  
        .AWID          (AXI_SLAVE.aw_id),  
        .AWADDR        (AXI_SLAVE.aw_addr),  
        .AWLEN         (AXI_SLAVE.aw_len),  
        .AWLOCK        (AXI_SLAVE.aw_lock),  
        .AWSIZE        (AXI_SLAVE.aw_size),  
        .AWBURST       (AXI_SLAVE.aw_burst),  
        .AWCACHE       (AXI_SLAVE.aw_cache),  
        .AWPROT        (AXI_SLAVE.aw_prot),  
        .AWVALID       (AXI_SLAVE.aw_valid),  
        .AWREADY       (AXI_SLAVE.aw_ready),  
        
        .WDATA         (AXI_SLAVE.w_data),  
        .WSTRB         (AXI_SLAVE.w_strb),  
        .WLAST         (AXI_SLAVE.w_last),  
        .WVALID        (AXI_SLAVE.w_valid),  
        .WREADY        (AXI_SLAVE.w_ready),  
        
        .BID           (AXI_SLAVE.b_id),  
        .BRESP         (AXI_SLAVE.b_resp),  
        .BVALID        (AXI_SLAVE.b_valid),  
        .BREADY        (AXI_SLAVE.b_ready),  
        
        .ARID          (AXI_SLAVE.ar_id),  
        .ARADDR        (AXI_SLAVE.ar_addr),  
        .ARLEN         (AXI_SLAVE.ar_len),  
        .ARLOCK        (AXI_SLAVE.ar_lock),  
        .ARSIZE        (AXI_SLAVE.ar_size),  
        .ARBURST       (AXI_SLAVE.ar_burst),  
        .ARCACHE       (AXI_SLAVE.ar_cache),  
        .ARPROT        (AXI_SLAVE.ar_prot),  
        .ARVALID       (AXI_SLAVE.ar_valid),  
        .ARREADY       (AXI_SLAVE.ar_ready),  
        
        .RID           (AXI_SLAVE.r_id),  
        .RDATA         (AXI_SLAVE.r_data),  
        .RRESP         (AXI_SLAVE.r_resp),  
        .RLAST         (AXI_SLAVE.r_last),  
        .RVALID        (AXI_SLAVE.r_valid),  
        .RREADY        (AXI_SLAVE.r_ready),  
        
        // APB接口  
        .S_PADDR       (M_PADDR),  
        .S_PENABLE     (M_PENABLE),  
        .S_PWRITE      (M_PWRITE),  
        .S_PWDATA      (M_PWDATA),  
        .S0_PSEL       (M0_PSEL),  
        .S0_PRDATA     (M0_PRDATA),  
        .S0_PREADY     (M0_PREADY),  
        .S0_PSLVERR    (M0_PSLVERR),  
        .S1_PSEL       (M1_PSEL),  
        .S1_PRDATA     (M1_PRDATA),  
        .S1_PREADY     (M1_PREADY),  
        .S1_PSLVERR    (M1_PSLVERR)  
    );  

endmodule  