module f_spsram_16384x128 (
  A,
  CEN,
  CLK,
  D,
  Q,
  WEN
);

input	[13:0]				A;           
input								CEN;         
input								CLK;         
input	[127:0]				D;           
input	[15:0]				WEN;         
output reg	[127:0]	Q;           

reg [127:0] mem [0:16384-1];
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