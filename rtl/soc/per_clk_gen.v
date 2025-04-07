// TODO: clock div
module per_clk_gen (
	input	ckl_i,
	output	per_clk,
	output	axi_clk_en	
);
parameter DIV_RATE = 1'd1;

assign per_clk = ckl_i;
assign axi_clk_en = 1'b1;

endmodule