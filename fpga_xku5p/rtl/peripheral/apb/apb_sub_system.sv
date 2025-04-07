module apb_sub_system (
	input			pclk,
	input			prst_n,
    input	[31:0]	m_paddr,  
    input			m_penable,  
    input			m_pwrite,  
    input	[31:0]	m_pwdata,  
    // NPU
    input			m0_psel,  
    output	[31:0]	m0_prdata,  
    output			m0_pready,  
    output			m0_pslverr,  
    // URAT0
    input			m1_psel,  
    output	[31:0]	m1_prdata,  
    output			m1_pready,  
    output			m1_pslverr,
    // URAT0
    input			uart0_rx,
    output			urat0_tx,
    output			uart0_int
);

apb_to_reg x_apb_to_reg (
	.pclk    (pclk),
	.presetn (prst_n),
	.paddr   (m_paddr[5:0]),
	.psel    (m0_psel),
	.penable (m_penable),
	.pwrite  (m_pwrite),
	.pwdata  (m_pwdata),
	.prdata  (m0_prdata),
	.pready  (m0_pready),
	.pslverr (m0_pslverr)
);

uart x0_uart(
	.apb_uart_paddr   (m_paddr[7:0]),
	.apb_uart_penable (m_penable),
	.apb_uart_psel    (m1_psel),
	.apb_uart_pwdata  (m_pwdata),
	.apb_uart_pwrite  (m_pwrite),
	.rst_b            (prst_n),
	.s_in             (uart0_rx),
	.s_out            (urat0_tx),
	.sys_clk          (pclk),
	.uart_apb_prdata  (m1_prdata),
	.uart_vic_int     (uart0_int)
);
assign m1_pready = 1'd1;

endmodule