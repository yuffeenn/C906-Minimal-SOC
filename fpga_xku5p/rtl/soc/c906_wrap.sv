module c906_wrap(  
    input            pll_core_cpuclk, 
    input            axim_clk_en,  
    input            pad_cpu_rst_b,  
    input            pad_dtm_jtg_tclk,  
    input            pad_dtm_jtg_tdi,  
    input            pad_dtm_jtg_tms,  
    input            pad_dtm_jtg_trst_b,  
    input            pad_yy_scan_enable,  
    input            pad_yy_scan_mode,  
    input   [39:0]   xx_intc_int,  
    output  [1:0]    core0_pad_lpmd_b,  
    output           core0_pad_retire0,  
    output  [39:0]   core0_pad_retire0_pc,  
    output           dtm_pad_jtg_tdo,  
    output           dtm_pad_jtg_tdo_en, 
    
    AXI_BUS.Master   axi_mst  
);  

    // 定义内部寄存器和信号  
    reg     [63:0]   pad_cpu_sys_cnt;  
    reg              sys_apb_clk;  

    // DMI接口信号  
    wire    [11:0]   tdt_dmi_paddr;  
    wire             tdt_dmi_penable;  
    wire    [31:0]   tdt_dmi_prdata;  
    wire             tdt_dmi_pready;  
    wire             tdt_dmi_psel;  
    wire             tdt_dmi_pslverr;  
    wire    [31:0]   tdt_dmi_pwdata;  
    wire             tdt_dmi_pwrite;  

    // 内部信号定义  
    wire             cpu_debug_port;  
    wire    [228:0]  core0_pad_dispatch_info;  
    wire             core0_pad_flush;  
    wire             core0_pad_ipend_b;  
    wire             core0_pad_halted;  
    wire    [63:0]   core0_pad_mstatus;  
    wire             core0_pad_retire1;  
    wire    [6:0]    core0_pad_retire1_iid;  
    wire    [39:0]   core0_pad_retire1_pc;  
    wire             core0_pad_retire2;  
    wire    [6:0]    core0_pad_retire2_iid;  
    wire    [39:0]   core0_pad_retire2_pc;  
    wire             core0_pad_wakeup_b;  
    wire    [63:0]   core0_pad_wb0_data;  
    wire    [4:0]    core0_pad_wb0_fdata;  
    wire    [4:0]    core0_pad_wb0_freg;  
    wire             core0_pad_wb0_freg_vld;  
    wire    [6:0]    core0_pad_wb0_preg;  
    wire    [63:0]   core0_pad_wb0_vdata;  
    wire             core0_pad_wb0_vld;  
    wire    [5:0]    core0_pad_wb0_vreg;  
    wire             core0_pad_wb0_vreg_vld;  
    wire    [63:0]   core0_pad_wb1_data;  
    wire    [4:0]    core0_pad_wb1_fdata;  
    wire    [4:0]    core0_pad_wb1_freg;  
    wire             core0_pad_wb1_freg_vld;  
    wire    [6:0]    core0_pad_wb1_preg;  
    wire    [63:0]   core0_pad_wb1_vdata;  
    wire             core0_pad_wb1_vld;  
    wire    [5:0]    core0_pad_wb1_vreg;  
    wire             core0_pad_wb1_vreg_vld;  
    wire    [63:0]   core0_pad_wb2_data;  
    wire    [6:0]    core0_pad_wb2_preg;  
    wire    [63:0]   core0_pad_wb2_vdata;  
    wire             core0_pad_wb2_vld;  
    wire    [5:0]    core0_pad_wb2_vreg;  
    wire             core0_pad_wb2_vreg_vld;  
    wire             cpu_pad_no_op;  
    wire             create_en;  
    wire    [39:0]   pad_cpu_apb_base;  
    wire    [39:0]   pad_cpu_rvba;  
    wire    [240-1:0] pad_plic_int_cfg;  
    wire    [240-1:0] pad_plic_int_vld;  
    wire             pad_yy_bist_tst_en;  
    wire             pad_yy_gate_clk_en_b;  

    // CPU核心实例化  
    openC906 x_cpu_top (  
        .axim_clk_en             (axim_clk_en),  

        // AXI总线接口连接  
        .biu_pad_araddr          (axi_mst.ar_addr),  
        .biu_pad_arburst         (axi_mst.ar_burst),  
        .biu_pad_arcache         (axi_mst.ar_cache),  
        .biu_pad_arid            (axi_mst.ar_id),  
        .biu_pad_arlen           (axi_mst.ar_len),  
        .biu_pad_arlock          (axi_mst.ar_lock),  
        .biu_pad_arprot          (axi_mst.ar_prot),  
        .biu_pad_arsize          (axi_mst.ar_size),  
        .biu_pad_arvalid         (axi_mst.ar_valid),  
        .pad_biu_arready         (axi_mst.ar_ready),  

        .biu_pad_awaddr          (axi_mst.aw_addr),  
        .biu_pad_awburst         (axi_mst.aw_burst),  
        .biu_pad_awcache         (axi_mst.aw_cache),  
        .biu_pad_awid            (axi_mst.aw_id),  
        .biu_pad_awlen           (axi_mst.aw_len),  
        .biu_pad_awlock          (axi_mst.aw_lock),  
        .biu_pad_awprot          (axi_mst.aw_prot),  
        .biu_pad_awsize          (axi_mst.aw_size),  
        .biu_pad_awvalid         (axi_mst.aw_valid),  
        .pad_biu_awready         (axi_mst.aw_ready),  

        .biu_pad_wdata           (axi_mst.w_data),  
        .biu_pad_wlast           (axi_mst.w_last),  
        .biu_pad_wstrb           (axi_mst.w_strb),  
        .biu_pad_wvalid          (axi_mst.w_valid),  
        .pad_biu_wready          (axi_mst.w_ready),  

        .biu_pad_bready          (axi_mst.b_ready),  
        .pad_biu_bid             (axi_mst.b_id),  
        .pad_biu_bresp           (axi_mst.b_resp),  
        .pad_biu_bvalid          (axi_mst.b_valid),  

        .biu_pad_rready          (axi_mst.r_ready),  
        .pad_biu_rdata           (axi_mst.r_data),  
        .pad_biu_rid             (axi_mst.r_id),  
        .pad_biu_rlast           (axi_mst.r_last),  
        .pad_biu_rresp           (axi_mst.r_resp),  
        .pad_biu_rvalid          (axi_mst.r_valid),  

        // 其他控制和状态信号  
        .core0_pad_halted        (core0_pad_halted),  
        .core0_pad_lpmd_b        (),  
        .core0_pad_retire        (core0_pad_retire0),  
        .core0_pad_retire_pc     (core0_pad_retire0_pc),  
        .cpu_debug_port          (cpu_debug_port),  
        .pad_cpu_apb_base        (pad_cpu_apb_base),  
        .pad_cpu_rst_b           (pad_cpu_rst_b),  
        .pad_cpu_rvba            (pad_cpu_rvba),  
        .pad_cpu_sys_cnt         (pad_cpu_sys_cnt),  
        .pad_plic_int_cfg        (pad_plic_int_cfg),  
        .pad_plic_int_vld        (pad_plic_int_vld),  
        .pad_tdt_dm_core_unavail (1'b0),  
        .pad_yy_dft_clk_rst_b    (1'b1),  
        .pad_yy_icg_scan_en      (1'b0),  
        .pad_yy_mbist_mode       (1'b0),  
        .pad_yy_scan_enable      (pad_yy_scan_enable),  
        .pad_yy_scan_mode        (pad_yy_scan_mode),  
        .pad_yy_scan_rst_b       (1'b1),  
        .pll_core_cpuclk         (pll_core_cpuclk),  
        .sys_apb_clk             (sys_apb_clk),  
        .sys_apb_rst_b           (pad_cpu_rst_b),  

        // TDT调试接口  
        .pad_tdt_dm_arready      (1'b0),  
        .pad_tdt_dm_awready      (1'b0),  
        .pad_tdt_dm_bid          (4'b0),  
        .pad_tdt_dm_bresp        (2'b0),  
        .pad_tdt_dm_bvalid       (1'b0),  
        .pad_tdt_dm_rdata        (128'b0),  
        .pad_tdt_dm_rid          (4'b0),  
        .pad_tdt_dm_rlast        (1'b0),  
        .pad_tdt_dm_rresp        (2'b0),  
        .pad_tdt_dm_rvalid       (1'b0),  
        .pad_tdt_dm_wready       (1'b0),  
        .tdt_dm_pad_araddr       (),  
        .tdt_dm_pad_arburst      (),  
        .tdt_dm_pad_arcache      (),  
        .tdt_dm_pad_arid         (),  
        .tdt_dm_pad_arlen        (),  
        .tdt_dm_pad_arlock       (),  
        .tdt_dm_pad_arprot       (),  
        .tdt_dm_pad_arsize       (),  
        .tdt_dm_pad_arvalid      (),  
        .tdt_dm_pad_awaddr       (),  
        .tdt_dm_pad_awburst      (),  
        .tdt_dm_pad_awcache      (),  
        .tdt_dm_pad_awid         (),  
        .tdt_dm_pad_awlen        (),  
        .tdt_dm_pad_awlock       (),  
        .tdt_dm_pad_awprot       (),  
        .tdt_dm_pad_awsize       (),  
        .tdt_dm_pad_awvalid      (),  
        .tdt_dm_pad_bready       (),  
        .tdt_dm_pad_rready       (),  
        .tdt_dm_pad_wdata        (),  
        .tdt_dm_pad_wlast        (),  
        .tdt_dm_pad_wstrb        (),  
        .tdt_dm_pad_wvalid       (),  
        .tdt_dm_pad_hartreset_n  (),  
        .tdt_dm_pad_ndmreset_n   (),  
        .tdt_dmi_paddr           (tdt_dmi_paddr),  
        .tdt_dmi_penable         (tdt_dmi_penable),  
        .tdt_dmi_prdata          (tdt_dmi_prdata),  
        .tdt_dmi_pready          (tdt_dmi_pready),  
        .tdt_dmi_psel            (tdt_dmi_psel),  
        .tdt_dmi_pslverr         (tdt_dmi_pslverr),  
        .tdt_dmi_pwdata          (tdt_dmi_pwdata),  
        .tdt_dmi_pwrite          (tdt_dmi_pwrite)  
    );  

always @(posedge pll_core_cpuclk or negedge pad_cpu_rst_b) begin  
    if (!pad_cpu_rst_b)  
        sys_apb_clk <= 1'b0;  
    else  
        sys_apb_clk <= ~sys_apb_clk;  
end  
  
tdt_dmi_top x_c906_dtm_top(
  .pad_tdt_dtm_jtag2_sel (1'b0              ),
  .pad_tdt_dtm_tap_en    (1'b1              ),
  .pad_tdt_dtm_tclk      (pad_dtm_jtg_tclk  ),
  .pad_tdt_dtm_tdi       (pad_dtm_jtg_tdi   ),
  .pad_tdt_dtm_tms_i     (pad_dtm_jtg_tms   ),
  .pad_tdt_dtm_trst_b    (pad_dtm_jtg_trst_b),
  .pad_tdt_icg_scan_en   (1'b0              ),
  .pad_yy_scan_mode      (pad_yy_scan_mode  ),
  .pad_yy_scan_rst_b     (1'b1              ),
  .sys_apb_clk           (sys_apb_clk       ),
  .sys_apb_rst_b         (pad_cpu_rst_b     ),
  .tdt_dmi_paddr         (tdt_dmi_paddr     ),
  .tdt_dmi_penable       (tdt_dmi_penable   ),
  .tdt_dmi_prdata        (tdt_dmi_prdata    ),
  .tdt_dmi_pready        (tdt_dmi_pready    ),
  .tdt_dmi_psel          (tdt_dmi_psel      ),
  .tdt_dmi_pslverr       (tdt_dmi_pslverr   ),
  .tdt_dmi_pwdata        (tdt_dmi_pwdata    ),
  .tdt_dmi_pwrite        (tdt_dmi_pwrite    ),
  .tdt_dtm_pad_tdo       (dtm_pad_jtg_tdo   ),
  .tdt_dtm_pad_tdo_en    (dtm_pad_jtg_tdo_en),
  .tdt_dtm_pad_tms_o     (                  ),
  .tdt_dtm_pad_tms_oe    (                  )
);

assign core0_pad_ipend_b = 1;
assign core0_pad_wakeup_b = 1;
assign cpu_pad_no_op = 0;
// assign cpu_debug_port = 0;
assign core0_pad_lpmd_b = 1;

always@(posedge pll_core_cpuclk or negedge pad_cpu_rst_b)
begin
  if (!pad_cpu_rst_b)
    pad_cpu_sys_cnt[63:0] <= 64'b0;
  else
    pad_cpu_sys_cnt[63:0] <= pad_cpu_sys_cnt[63:0] + 1'b1;
end

// assign pad_plic_int_vld[79:0] = {16'h0,xx_intc_int[63:0]};
assign pad_plic_int_vld          = {{240 - 40{1'b0}}, xx_intc_int[39:0]};
assign pad_plic_int_cfg          = 'b0;
//assign pad_cpu_apb_base[39:0]  = 40'h8000001fb2;
assign pad_cpu_apb_base[39:0]    = `C906_PLIC;
assign pad_cpu_rvba[39:0]        = `CPU_RVBA;

endmodule
