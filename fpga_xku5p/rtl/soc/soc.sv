module soc (
	input	i_pad_clk,
	input	i_pad_rst_b,
	input	i_pad_jtg_nrst_b,
	input	i_pad_jtg_tclk,
	input	i_pad_jtg_tdi,
	input	i_pad_jtg_tms,
	input	i_pad_jtg_trst_b,
	output	o_pad_jtg_tdo,
	input	i_pad_uart_rx,
	output	o_pad_uart_tx	
);

wire pad_cpu_rst_b = i_pad_rst_b & i_pad_jtg_nrst_b;
wire aclk;
wire aclk_en;
wire arst_n = pad_cpu_rst_b;
per_clk_gen x_per_clk_gen (
	.ckl_i      (i_pad_clk), 
	.per_clk    (aclk), 
	.axi_clk_en (aclk_en)
);
//-----------------------------------------------------------------
//  SLAVE0: BROM
//  SLAVE1: SRAM
//  SLAVE2: APB
//  SLAVE3: DRAM
//-----------------------------------------------------------------
localparam AXI_ADDR_WIDTH = 40;
localparam AXI_DATA_WIDTH = 128;
AXI_BUS #(  
    .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),  
    .AXI_DATA_WIDTH(AXI_DATA_WIDTH),  
    .AXI_ID_WIDTH(8)  
) axi_node_in[0:0]();  
AXI_BUS #(  
    .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),  
    .AXI_DATA_WIDTH(AXI_DATA_WIDTH),  
    .AXI_ID_WIDTH(8)  
) axi_node_out[1:0]();  

axi_interconnect_wrap #(
	.DATA_WIDTH     (AXI_DATA_WIDTH),
	.ADDR_WIDTH     (AXI_ADDR_WIDTH),
	.ID_WIDTH       (8),
	.M00_BASE_ADDR  (`SRAM_ADDR_BASE),
	.M00_ADDR_WIDTH (`SRAM_ADDR_LEN),
	.M01_BASE_ADDR  (`APB_ADDR_BASE),
	.M01_ADDR_WIDTH (`APB_ADDR_LEN)
) x_axi_interconnect_wrap (
	.clk     (aclk),
	.rst     (~arst_n),
	.s00_axi (axi_node_in[0]),
	.m00_axi (axi_node_out[0]),
	.m01_axi (axi_node_out[1])
);

//-----------------------------------------------------------------
//  SRAM
//-----------------------------------------------------------------
axi_slave_warp #(
	.AXI_ADDR_WIDTH (AXI_ADDR_WIDTH),
	.AXI_DATA_WIDTH (AXI_DATA_WIDTH),
	.AXI_ID_WIDTH   (8)
) x_axi_slave_warp (
	.aclk           (aclk),
	.arst_n         (arst_n),
	.axi_slave_if   (axi_node_out[0])
);

//-----------------------------------------------------------------
//  C906
//-----------------------------------------------------------------
wire [39:0] xx_intc_int;
c906_wrap x_c906_wrap(
	.pll_core_cpuclk      (i_pad_clk),
	.axim_clk_en          (aclk_en),
	.pad_cpu_rst_b        (pad_cpu_rst_b),
	.pad_dtm_jtg_tclk     (i_pad_jtg_tclk),
	.pad_dtm_jtg_tdi      (i_pad_jtg_tdi),
	.pad_dtm_jtg_tms      (i_pad_jtg_tms),
	.pad_dtm_jtg_trst_b   (i_pad_jtg_trst_b),
	.pad_yy_scan_enable   (1'b0),
	.pad_yy_scan_mode     (1'b0),
	.xx_intc_int          (xx_intc_int),
	.core0_pad_lpmd_b     (),
	.core0_pad_retire0    (),
	.core0_pad_retire0_pc (),
	.dtm_pad_jtg_tdo      (o_pad_jtg_tdo),
	.dtm_pad_jtg_tdo_en   (),
	.axi_mst              (axi_node_in[0])
);

//-----------------------------------------------------------------
//  AXI TO APB BRIDGE
//-----------------------------------------------------------------
wire pclk   = aclk;
wire prst_n = arst_n;

wire	[31:0]	m_paddr; 
wire			m_penable; 
wire			m_pwrite; 
wire	[31:0]	m_pwdata; 
wire			m0_psel; 
wire	[31:0]	m0_prdata; 
wire			m0_pready; 
wire			m0_pslverr; 
wire			m1_psel; 
wire	[31:0]	m1_prdata; 
wire			m1_pready; 
wire			m1_pslverr;


axi2apb_wrap #(
	.AXI_WIDTH_SID (8),
	.AXI_WIDTH_AD  (AXI_ADDR_WIDTH),
	.AXI_WIDTH_DA  (AXI_DATA_WIDTH),
	.WIDTH_PAD     (32),
	.WIDTH_PDA     (32),
	.ADDR_PBASE0   (`NPU_BASE_ADDR),
	.ADDR_PLENGTH0 (`NPU_ADDR_LEN),
	.ADDR_PBASE1   (`UART0_BASE_ADDR),
	.ADDR_PLENGTH1 (`UART0_ADDR_LEN),
	.CLOCK_RATIO   (2'b00)
) x_axi2apb_wrap (
	.ARESETn       (arst_n),
	.ACLK          (aclk),
	.PRESETn       (prst_n),
	.PCLK          (pclk),
	.AXI_SLAVE     (axi_node_out[1]),
	.M_PADDR       (m_paddr),
	.M_PENABLE     (m_penable),
	.M_PWRITE      (m_pwrite),
	.M_PWDATA      (m_pwdata),
	.M0_PSEL       (m0_psel),
	.M0_PRDATA     (m0_prdata),
	.M0_PREADY     (m0_pready),
	.M0_PSLVERR    (m0_pslverr),
	.M1_PSEL       (m1_psel),
	.M1_PRDATA     (m1_prdata),
	.M1_PREADY     (m1_pready),
	.M1_PSLVERR    (m1_pslverr)
);

wire uart0_int;
apb_sub_system x_apb_sub_system(
	.pclk       (pclk),
	.prst_n     (prst_n),
	.m_paddr    (m_paddr),
	.m_penable  (m_penable),
	.m_pwrite   (m_pwrite),
	.m_pwdata   (m_pwdata),
	.m0_psel    (m0_psel),
	.m0_prdata  (m0_prdata),
	.m0_pready  (m0_pready),
	.m0_pslverr (m0_pslverr),
	.m1_psel    (m1_psel),
	.m1_prdata  (m1_prdata),
	.m1_pready  (m1_pready),
	.m1_pslverr (m1_pslverr),
	.uart0_rx   (i_pad_uart_rx),
	.urat0_tx   (o_pad_uart_tx),
	.uart0_int  (uart0_int)
);
assign xx_intc_int = {39'd0, uart0_int};

endmodule