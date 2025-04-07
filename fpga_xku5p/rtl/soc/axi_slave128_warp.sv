module axi_slave_warp #(
  parameter AXI_ADDR_WIDTH = 32,
  parameter AXI_DATA_WIDTH = 128,
  parameter AXI_ID_WIDTH   = 8
)(
  input           aclk,
  input           arst_n,
  AXI_BUS.Slave   axi_slave_if
);

  axi_slave128 x_axi_slave128 (
    // AW 通道
    .awaddr_s0   (axi_slave_if.aw_addr),
    .awburst_s0  (axi_slave_if.aw_burst),
    .awcache_s0  (axi_slave_if.aw_cache),
    .awid_s0     (axi_slave_if.aw_id),
    .awlen_s0    (axi_slave_if.aw_len),
    .awprot_s0   (axi_slave_if.aw_prot),
    .awready_s0  (axi_slave_if.aw_ready),
    .awsize_s0   (axi_slave_if.aw_size),
    .awvalid_s0  (axi_slave_if.aw_valid),
    
    // AR 通道
    .araddr_s0   (axi_slave_if.ar_addr),
    .arburst_s0  (axi_slave_if.ar_burst),
    .arcache_s0  (axi_slave_if.ar_cache),
    .arid_s0     (axi_slave_if.ar_id),
    .arlen_s0    (axi_slave_if.ar_len),
    .arprot_s0   (axi_slave_if.ar_prot),
    .arready_s0  (axi_slave_if.ar_ready),
    .arsize_s0   (axi_slave_if.ar_size),
    .arvalid_s0  (axi_slave_if.ar_valid),
    
    // W 通道
    .wdata_s0    (axi_slave_if.w_data),
    .wid_s0      (),
    .wlast_s0    (axi_slave_if.w_last),
    .wready_s0   (axi_slave_if.w_ready),
    .wstrb_s0    (axi_slave_if.w_strb),
    .wvalid_s0   (axi_slave_if.w_valid),
    
    // R 通道
    .rdata_s0    (axi_slave_if.r_data),
    .rid_s0      (axi_slave_if.r_id),
    .rlast_s0    (axi_slave_if.r_last),
    .rready_s0   (axi_slave_if.r_ready),
    .rresp_s0    (axi_slave_if.r_resp),
    .rvalid_s0   (axi_slave_if.r_valid),
    
    // B 通道
    .bid_s0      (axi_slave_if.b_id),
    .bready_s0   (axi_slave_if.b_ready),
    .bresp_s0    (axi_slave_if.b_resp),
    .bvalid_s0   (axi_slave_if.b_valid),
    
    // 其他信号
    .pad_cpu_rst_b  (arst_n),
    .pll_core_cpuclk(aclk)
  );

endmodule

