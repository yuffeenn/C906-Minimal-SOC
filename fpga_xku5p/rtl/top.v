`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 19:34:17
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input   sys_clk_p,
    input   sys_clk_n,
    input   sys_rst_n,
    // jtag
    input   tck,
    input   trst_n,
    input   tms,
    input   tdi,
    output  tdo,
    // uart
    input	rx_i,
    output	tx_o	
    );

wire sys_clk;
IBUFDS X_IBUFDS(
  .O(sys_clk),   // 1-bit output: Buffer output
  .I(sys_clk_p),   // 1-bit input: Diff_p buffer input (connect directly to top-level port)
  .IB(sys_clk_n)  // 1-bit input: Diff_n buffer input (connect directly to top-level port)
);

soc x_soc(
    .i_pad_clk        (sys_clk),
    .i_pad_rst_b      (sys_rst_n),
    .i_pad_jtg_nrst_b (trst_n),
    .i_pad_jtg_tclk   (tck),
    .i_pad_jtg_tdi    (tdi),
    .i_pad_jtg_tms    (tms),
    .i_pad_jtg_trst_b (1'b1),
    .o_pad_jtg_tdo    (tdo),
    .i_pad_uart_rx    (rx_i),
    .o_pad_uart_tx    (tx_o)
);


endmodule
