module f_spsram_16384x128 (
  A,
  CEN,
  CLK,
  D,
  Q,
  WEN
);
        
input						CLK; 
(*mark_debug="true"*)input	[13:0]				A;           
(*mark_debug="true"*)input						CEN;         
(*mark_debug="true"*)input	[127:0]				D;           
(*mark_debug="true"*)input	[15:0]				WEN;         
output reg	[127:0]	        Q;           

reg [127:0] mem [0:16384-1];
initial begin
// $readmemh("/home/zfh/Desktop/soc_workspace/soc_c906_v1.1/fpga_xku5p/case.hex", mem);
end
integer i;

always @(posedge CLK) begin
	for (i=0; i<16; i=i+1) begin
		if (~CEN && ~WEN[i])
			mem[A][i*8 +: 8] <= D[i*8 +: 8];
	end
end

always @(posedge CLK) begin
	if (~CEN && (&WEN))
		Q <= mem[A];
end

endmodule