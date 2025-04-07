
// SLAVES: 1 / MASTERS: 2
module axi_interconnect_wrap #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 32,
    parameter ID_WIDTH = 8,
    
    parameter M00_BASE_ADDR = 0,
    parameter M00_ADDR_WIDTH = 32'd24,
    
    parameter M01_BASE_ADDR = 0,
    parameter M01_ADDR_WIDTH = 32'd24
    
)
(
    input  wire                     clk,
    input  wire                     rst,

    
    AXI_BUS.Slave                   s00_axi
    ,

    
    AXI_BUS.Master                  m00_axi,
    
    AXI_BUS.Master                  m01_axi
    
);

    localparam STRB_WIDTH = (DATA_WIDTH/8);
    localparam AWUSER_WIDTH = 1;
    localparam WUSER_WIDTH = 1;
    localparam BUSER_WIDTH = 1;
    localparam ARUSER_WIDTH = 1;
    localparam RUSER_WIDTH = 1;
    localparam M_REGIONS = 1;

    localparam S_COUNT = 1;
    localparam M_COUNT = 2;

    // parameter sizing helpers
    function [ADDR_WIDTH*M_REGIONS-1:0] w_a_r(input [ADDR_WIDTH*M_REGIONS-1:0] val);
        w_a_r = val;
    endfunction

    function [32*M_REGIONS-1:0] w_32_r(input [32*M_REGIONS-1:0] val);
        w_32_r = val;
    endfunction

    axi_interconnect #(
        .S_COUNT(1),
        .M_COUNT(2),
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .STRB_WIDTH(STRB_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .AWUSER_ENABLE(0),
        .AWUSER_WIDTH(AWUSER_WIDTH),
        .WUSER_ENABLE(0),
        .WUSER_WIDTH(WUSER_WIDTH),
        .BUSER_ENABLE(0),
        .BUSER_WIDTH(BUSER_WIDTH),
        .ARUSER_ENABLE(0),
        .ARUSER_WIDTH(ARUSER_WIDTH),
        .RUSER_ENABLE(0),
        .RUSER_WIDTH(RUSER_WIDTH),
        .FORWARD_ID(0),
        .M_REGIONS(M_REGIONS),
        .M_BASE_ADDR({ w_a_r(M01_BASE_ADDR), w_a_r(M00_BASE_ADDR) }),
        .M_ADDR_WIDTH({ w_32_r(M01_ADDR_WIDTH), w_32_r(M00_ADDR_WIDTH) })
    ) x_axi_interconnect (
        .clk(clk),
        .rst(rst),

        .s_axi_awid(        { s00_axi.aw_id }),
        .s_axi_awaddr(      { s00_axi.aw_addr }),
        .s_axi_awlen(       { s00_axi.aw_len }),
        .s_axi_awsize(      { s00_axi.aw_size }),
        .s_axi_awburst(     { s00_axi.aw_burst }),
        .s_axi_awlock(      { s00_axi.aw_lock }),
        .s_axi_awcache(     { s00_axi.aw_cache }),
        .s_axi_awprot(      { s00_axi.aw_prot }),
        .s_axi_awqos(       { 4'b0 }),
        .s_axi_awuser(      { 1'b0 }),
        .s_axi_awvalid(     { s00_axi.aw_valid }),
        .s_axi_awready(     { s00_axi.aw_ready }),

        .s_axi_wdata(       { s00_axi.w_data }),
        .s_axi_wstrb(       { s00_axi.w_strb }),
        .s_axi_wlast(       { s00_axi.w_last }),
        .s_axi_wuser(       { 1'b0 }),
        .s_axi_wvalid(      { s00_axi.w_valid }),
        .s_axi_wready(      { s00_axi.w_ready }),

        .s_axi_bid(         { s00_axi.b_id }),
        .s_axi_bresp(       { s00_axi.b_resp }),
        .s_axi_buser(),
        .s_axi_bvalid(      { s00_axi.b_valid }),
        .s_axi_bready(      { s00_axi.b_ready }),

        .s_axi_arid(        { s00_axi.ar_id }),
        .s_axi_araddr(      { s00_axi.ar_addr }),
        .s_axi_arlen(       { s00_axi.ar_len }),
        .s_axi_arsize(      { s00_axi.ar_size }),
        .s_axi_arburst(     { s00_axi.ar_burst }),
        .s_axi_arlock(      { s00_axi.ar_lock }),
        .s_axi_arcache(     { s00_axi.ar_cache }),
        .s_axi_arprot(      { s00_axi.ar_prot }),
        .s_axi_arqos(       { 4'b0 }),
        .s_axi_aruser(      { 1'b0 }),
        .s_axi_arvalid(     { s00_axi.ar_valid }),
        .s_axi_arready(     { s00_axi.ar_ready }),

        .s_axi_rid(         { s00_axi.r_id }),
        .s_axi_rdata(       { s00_axi.r_data }),
        .s_axi_rresp(       { s00_axi.r_resp }),
        .s_axi_rlast(       { s00_axi.r_last }),
        .s_axi_ruser(),
        .s_axi_rvalid(      { s00_axi.r_valid }),
        .s_axi_rready(      { s00_axi.r_ready }),

        .m_axi_awid(        { m01_axi.aw_id, m00_axi.aw_id }),
        .m_axi_awaddr(      { m01_axi.aw_addr, m00_axi.aw_addr }),
        .m_axi_awlen(       { m01_axi.aw_len, m00_axi.aw_len }),
        .m_axi_awsize(      { m01_axi.aw_size, m00_axi.aw_size }),
        .m_axi_awburst(     { m01_axi.aw_burst, m00_axi.aw_burst }),
        .m_axi_awlock(      { m01_axi.aw_lock, m00_axi.aw_lock }),
        .m_axi_awcache(     { m01_axi.aw_cache, m00_axi.aw_cache }),
        .m_axi_awprot(      { m01_axi.aw_prot, m00_axi.aw_prot }),
        .m_axi_awqos(),
        .m_axi_awregion(),
        .m_axi_awuser(),
        .m_axi_awvalid(     { m01_axi.aw_valid, m00_axi.aw_valid }),
        .m_axi_awready(     { m01_axi.aw_ready, m00_axi.aw_ready }),

        .m_axi_wdata(       { m01_axi.w_data, m00_axi.w_data }),
        .m_axi_wstrb(       { m01_axi.w_strb, m00_axi.w_strb }),
        .m_axi_wlast(       { m01_axi.w_last, m00_axi.w_last }),
        .m_axi_wuser(),
        .m_axi_wvalid(      { m01_axi.w_valid, m00_axi.w_valid }),
        .m_axi_wready(      { m01_axi.w_ready, m00_axi.w_ready }),

        .m_axi_bid(         { m01_axi.b_id, m00_axi.b_id }),
        .m_axi_bresp(       { m01_axi.b_resp, m00_axi.b_resp }),
        .m_axi_buser(       { 1'b0, 1'b0 }),
        .m_axi_bvalid(      { m01_axi.b_valid, m00_axi.b_valid }),
        .m_axi_bready(      { m01_axi.b_ready, m00_axi.b_ready }),

        .m_axi_arid(        { m01_axi.ar_id, m00_axi.ar_id }),
        .m_axi_araddr(      { m01_axi.ar_addr, m00_axi.ar_addr }),
        .m_axi_arlen(       { m01_axi.ar_len, m00_axi.ar_len }),
        .m_axi_arsize(      { m01_axi.ar_size, m00_axi.ar_size }),
        .m_axi_arburst(     { m01_axi.ar_burst, m00_axi.ar_burst }),
        .m_axi_arlock(      { m01_axi.ar_lock, m00_axi.ar_lock }),
        .m_axi_arcache(     { m01_axi.ar_cache, m00_axi.ar_cache }),
        .m_axi_arprot(      { m01_axi.ar_prot, m00_axi.ar_prot }),
        .m_axi_arqos(),
        .m_axi_arregion(),
        .m_axi_aruser(),
        .m_axi_arvalid(     { m01_axi.ar_valid, m00_axi.ar_valid }),
        .m_axi_arready(     { m01_axi.ar_ready, m00_axi.ar_ready }),

        .m_axi_rid(         { m01_axi.r_id, m00_axi.r_id }),
        .m_axi_rdata(       { m01_axi.r_data, m00_axi.r_data }),
        .m_axi_rresp(       { m01_axi.r_resp, m00_axi.r_resp }),
        .m_axi_rlast(       { m01_axi.r_last, m00_axi.r_last }),
        .m_axi_ruser(       { 1'b0, 1'b0 }),
        .m_axi_rvalid(      { m01_axi.r_valid, m00_axi.r_valid }),
        .m_axi_rready(      { m01_axi.r_ready, m00_axi.r_ready })
    );

endmodule