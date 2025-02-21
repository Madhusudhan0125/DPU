//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Wed Feb  5 09:02:54 2025
//Host        : madhusudhan-OMEN-by-HP-Gaming-Laptop-16-k0xxx running 64-bit Ubuntu 24.04.1 LTS
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hier_dpu_clk_imp_P5CT15
   (CLK,
    DPU_CLK,
    DSP_CLK,
    LOCKED,
    RSTn,
    RSTn_DSP,
    RSTn_INTC,
    RSTn_PERI,
    clk_dsp_ce);
  input CLK;
  output DPU_CLK;
  output DSP_CLK;
  output LOCKED;
  input RSTn;
  output [0:0]RSTn_DSP;
  output [0:0]RSTn_INTC;
  output [0:0]RSTn_PERI;
  input clk_dsp_ce;

  wire CLK_1;
  wire RSTn_1;
  wire clk_dsp_ce_1;
  wire dpu_clk_wiz_clk_dpu;
  wire dpu_clk_wiz_clk_dsp;
  wire dpu_clk_wiz_locked;
  wire [0:0]rst_gen_clk_dsp_peripheral_aresetn;
  wire [0:0]rst_gen_clk_interconnect_aresetn;
  wire [0:0]rst_gen_clk_peripheral_aresetn;

  assign CLK_1 = CLK;
  assign DPU_CLK = dpu_clk_wiz_clk_dpu;
  assign DSP_CLK = dpu_clk_wiz_clk_dsp;
  assign LOCKED = dpu_clk_wiz_locked;
  assign RSTn_1 = RSTn;
  assign RSTn_DSP[0] = rst_gen_clk_dsp_peripheral_aresetn;
  assign RSTn_INTC[0] = rst_gen_clk_interconnect_aresetn;
  assign RSTn_PERI[0] = rst_gen_clk_peripheral_aresetn;
  assign clk_dsp_ce_1 = clk_dsp_ce;
  top_dpu_clk_wiz_0 dpu_clk_wiz
       (.clk_dpu(dpu_clk_wiz_clk_dpu),
        .clk_dsp(dpu_clk_wiz_clk_dsp),
        .clk_dsp_ce(clk_dsp_ce_1),
        .clk_in1(CLK_1),
        .locked(dpu_clk_wiz_locked),
        .resetn(RSTn_1));
  top_rst_gen_clk_0 rst_gen_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(dpu_clk_wiz_locked),
        .ext_reset_in(RSTn_1),
        .interconnect_aresetn(rst_gen_clk_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_gen_clk_peripheral_aresetn),
        .slowest_sync_clk(dpu_clk_wiz_clk_dpu));
  top_rst_gen_clk_dsp_0 rst_gen_clk_dsp
       (.aux_reset_in(1'b1),
        .dcm_locked(dpu_clk_wiz_locked),
        .ext_reset_in(RSTn_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_gen_clk_dsp_peripheral_aresetn),
        .slowest_sync_clk(dpu_clk_wiz_clk_dsp));
endmodule

module hier_dpu_ghp_imp_1DUMQPD
   (CLK,
    DPU0_M_AXI_DATA0_araddr,
    DPU0_M_AXI_DATA0_arburst,
    DPU0_M_AXI_DATA0_arcache,
    DPU0_M_AXI_DATA0_arid,
    DPU0_M_AXI_DATA0_arlen,
    DPU0_M_AXI_DATA0_arlock,
    DPU0_M_AXI_DATA0_arprot,
    DPU0_M_AXI_DATA0_arqos,
    DPU0_M_AXI_DATA0_arready,
    DPU0_M_AXI_DATA0_arsize,
    DPU0_M_AXI_DATA0_aruser,
    DPU0_M_AXI_DATA0_arvalid,
    DPU0_M_AXI_DATA0_awaddr,
    DPU0_M_AXI_DATA0_awburst,
    DPU0_M_AXI_DATA0_awcache,
    DPU0_M_AXI_DATA0_awid,
    DPU0_M_AXI_DATA0_awlen,
    DPU0_M_AXI_DATA0_awlock,
    DPU0_M_AXI_DATA0_awprot,
    DPU0_M_AXI_DATA0_awqos,
    DPU0_M_AXI_DATA0_awready,
    DPU0_M_AXI_DATA0_awsize,
    DPU0_M_AXI_DATA0_awuser,
    DPU0_M_AXI_DATA0_awvalid,
    DPU0_M_AXI_DATA0_bid,
    DPU0_M_AXI_DATA0_bready,
    DPU0_M_AXI_DATA0_bresp,
    DPU0_M_AXI_DATA0_bvalid,
    DPU0_M_AXI_DATA0_rdata,
    DPU0_M_AXI_DATA0_rid,
    DPU0_M_AXI_DATA0_rlast,
    DPU0_M_AXI_DATA0_rready,
    DPU0_M_AXI_DATA0_rresp,
    DPU0_M_AXI_DATA0_rvalid,
    DPU0_M_AXI_DATA0_wdata,
    DPU0_M_AXI_DATA0_wlast,
    DPU0_M_AXI_DATA0_wready,
    DPU0_M_AXI_DATA0_wstrb,
    DPU0_M_AXI_DATA0_wvalid,
    DPU0_M_AXI_DATA1_araddr,
    DPU0_M_AXI_DATA1_arburst,
    DPU0_M_AXI_DATA1_arcache,
    DPU0_M_AXI_DATA1_arid,
    DPU0_M_AXI_DATA1_arlen,
    DPU0_M_AXI_DATA1_arlock,
    DPU0_M_AXI_DATA1_arprot,
    DPU0_M_AXI_DATA1_arqos,
    DPU0_M_AXI_DATA1_arready,
    DPU0_M_AXI_DATA1_arsize,
    DPU0_M_AXI_DATA1_aruser,
    DPU0_M_AXI_DATA1_arvalid,
    DPU0_M_AXI_DATA1_awaddr,
    DPU0_M_AXI_DATA1_awburst,
    DPU0_M_AXI_DATA1_awcache,
    DPU0_M_AXI_DATA1_awid,
    DPU0_M_AXI_DATA1_awlen,
    DPU0_M_AXI_DATA1_awlock,
    DPU0_M_AXI_DATA1_awprot,
    DPU0_M_AXI_DATA1_awqos,
    DPU0_M_AXI_DATA1_awready,
    DPU0_M_AXI_DATA1_awsize,
    DPU0_M_AXI_DATA1_awuser,
    DPU0_M_AXI_DATA1_awvalid,
    DPU0_M_AXI_DATA1_bid,
    DPU0_M_AXI_DATA1_bready,
    DPU0_M_AXI_DATA1_bresp,
    DPU0_M_AXI_DATA1_bvalid,
    DPU0_M_AXI_DATA1_rdata,
    DPU0_M_AXI_DATA1_rid,
    DPU0_M_AXI_DATA1_rlast,
    DPU0_M_AXI_DATA1_rready,
    DPU0_M_AXI_DATA1_rresp,
    DPU0_M_AXI_DATA1_rvalid,
    DPU0_M_AXI_DATA1_wdata,
    DPU0_M_AXI_DATA1_wlast,
    DPU0_M_AXI_DATA1_wready,
    DPU0_M_AXI_DATA1_wstrb,
    DPU0_M_AXI_DATA1_wvalid,
    DPU0_M_AXI_INSTR_araddr,
    DPU0_M_AXI_INSTR_arburst,
    DPU0_M_AXI_INSTR_arcache,
    DPU0_M_AXI_INSTR_arid,
    DPU0_M_AXI_INSTR_arlen,
    DPU0_M_AXI_INSTR_arlock,
    DPU0_M_AXI_INSTR_arprot,
    DPU0_M_AXI_INSTR_arqos,
    DPU0_M_AXI_INSTR_arready,
    DPU0_M_AXI_INSTR_arsize,
    DPU0_M_AXI_INSTR_aruser,
    DPU0_M_AXI_INSTR_arvalid,
    DPU0_M_AXI_INSTR_awaddr,
    DPU0_M_AXI_INSTR_awburst,
    DPU0_M_AXI_INSTR_awcache,
    DPU0_M_AXI_INSTR_awid,
    DPU0_M_AXI_INSTR_awlen,
    DPU0_M_AXI_INSTR_awlock,
    DPU0_M_AXI_INSTR_awprot,
    DPU0_M_AXI_INSTR_awqos,
    DPU0_M_AXI_INSTR_awready,
    DPU0_M_AXI_INSTR_awsize,
    DPU0_M_AXI_INSTR_awuser,
    DPU0_M_AXI_INSTR_awvalid,
    DPU0_M_AXI_INSTR_bid,
    DPU0_M_AXI_INSTR_bready,
    DPU0_M_AXI_INSTR_bresp,
    DPU0_M_AXI_INSTR_bvalid,
    DPU0_M_AXI_INSTR_rdata,
    DPU0_M_AXI_INSTR_rid,
    DPU0_M_AXI_INSTR_rlast,
    DPU0_M_AXI_INSTR_rready,
    DPU0_M_AXI_INSTR_rresp,
    DPU0_M_AXI_INSTR_rvalid,
    DPU0_M_AXI_INSTR_wdata,
    DPU0_M_AXI_INSTR_wlast,
    DPU0_M_AXI_INSTR_wready,
    DPU0_M_AXI_INSTR_wstrb,
    DPU0_M_AXI_INSTR_wvalid,
    GHP_CLK_I,
    GHP_CLK_O,
    GHP_RSTn,
    M_AXI_HP0_FPD_araddr,
    M_AXI_HP0_FPD_arburst,
    M_AXI_HP0_FPD_arcache,
    M_AXI_HP0_FPD_arid,
    M_AXI_HP0_FPD_arlen,
    M_AXI_HP0_FPD_arlock,
    M_AXI_HP0_FPD_arprot,
    M_AXI_HP0_FPD_arqos,
    M_AXI_HP0_FPD_arready,
    M_AXI_HP0_FPD_arsize,
    M_AXI_HP0_FPD_aruser,
    M_AXI_HP0_FPD_arvalid,
    M_AXI_HP0_FPD_awaddr,
    M_AXI_HP0_FPD_awburst,
    M_AXI_HP0_FPD_awcache,
    M_AXI_HP0_FPD_awid,
    M_AXI_HP0_FPD_awlen,
    M_AXI_HP0_FPD_awlock,
    M_AXI_HP0_FPD_awprot,
    M_AXI_HP0_FPD_awqos,
    M_AXI_HP0_FPD_awready,
    M_AXI_HP0_FPD_awsize,
    M_AXI_HP0_FPD_awuser,
    M_AXI_HP0_FPD_awvalid,
    M_AXI_HP0_FPD_bid,
    M_AXI_HP0_FPD_bready,
    M_AXI_HP0_FPD_bresp,
    M_AXI_HP0_FPD_bvalid,
    M_AXI_HP0_FPD_rdata,
    M_AXI_HP0_FPD_rid,
    M_AXI_HP0_FPD_rlast,
    M_AXI_HP0_FPD_rready,
    M_AXI_HP0_FPD_rresp,
    M_AXI_HP0_FPD_rvalid,
    M_AXI_HP0_FPD_wdata,
    M_AXI_HP0_FPD_wlast,
    M_AXI_HP0_FPD_wready,
    M_AXI_HP0_FPD_wstrb,
    M_AXI_HP0_FPD_wvalid,
    M_AXI_HP1_FPD_araddr,
    M_AXI_HP1_FPD_arburst,
    M_AXI_HP1_FPD_arcache,
    M_AXI_HP1_FPD_arid,
    M_AXI_HP1_FPD_arlen,
    M_AXI_HP1_FPD_arlock,
    M_AXI_HP1_FPD_arprot,
    M_AXI_HP1_FPD_arqos,
    M_AXI_HP1_FPD_arready,
    M_AXI_HP1_FPD_arsize,
    M_AXI_HP1_FPD_aruser,
    M_AXI_HP1_FPD_arvalid,
    M_AXI_HP1_FPD_awaddr,
    M_AXI_HP1_FPD_awburst,
    M_AXI_HP1_FPD_awcache,
    M_AXI_HP1_FPD_awid,
    M_AXI_HP1_FPD_awlen,
    M_AXI_HP1_FPD_awlock,
    M_AXI_HP1_FPD_awprot,
    M_AXI_HP1_FPD_awqos,
    M_AXI_HP1_FPD_awready,
    M_AXI_HP1_FPD_awsize,
    M_AXI_HP1_FPD_awuser,
    M_AXI_HP1_FPD_awvalid,
    M_AXI_HP1_FPD_bid,
    M_AXI_HP1_FPD_bready,
    M_AXI_HP1_FPD_bresp,
    M_AXI_HP1_FPD_bvalid,
    M_AXI_HP1_FPD_rdata,
    M_AXI_HP1_FPD_rid,
    M_AXI_HP1_FPD_rlast,
    M_AXI_HP1_FPD_rready,
    M_AXI_HP1_FPD_rresp,
    M_AXI_HP1_FPD_rvalid,
    M_AXI_HP1_FPD_wdata,
    M_AXI_HP1_FPD_wlast,
    M_AXI_HP1_FPD_wready,
    M_AXI_HP1_FPD_wstrb,
    M_AXI_HP1_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    RSTn_INTC,
    RSTn_PERI);
  input CLK;
  input [39:0]DPU0_M_AXI_DATA0_araddr;
  input [1:0]DPU0_M_AXI_DATA0_arburst;
  input [3:0]DPU0_M_AXI_DATA0_arcache;
  input [1:0]DPU0_M_AXI_DATA0_arid;
  input [7:0]DPU0_M_AXI_DATA0_arlen;
  input [0:0]DPU0_M_AXI_DATA0_arlock;
  input [2:0]DPU0_M_AXI_DATA0_arprot;
  input [3:0]DPU0_M_AXI_DATA0_arqos;
  output DPU0_M_AXI_DATA0_arready;
  input [2:0]DPU0_M_AXI_DATA0_arsize;
  input [0:0]DPU0_M_AXI_DATA0_aruser;
  input DPU0_M_AXI_DATA0_arvalid;
  input [39:0]DPU0_M_AXI_DATA0_awaddr;
  input [1:0]DPU0_M_AXI_DATA0_awburst;
  input [3:0]DPU0_M_AXI_DATA0_awcache;
  input [1:0]DPU0_M_AXI_DATA0_awid;
  input [7:0]DPU0_M_AXI_DATA0_awlen;
  input [0:0]DPU0_M_AXI_DATA0_awlock;
  input [2:0]DPU0_M_AXI_DATA0_awprot;
  input [3:0]DPU0_M_AXI_DATA0_awqos;
  output DPU0_M_AXI_DATA0_awready;
  input [2:0]DPU0_M_AXI_DATA0_awsize;
  input [0:0]DPU0_M_AXI_DATA0_awuser;
  input DPU0_M_AXI_DATA0_awvalid;
  output [1:0]DPU0_M_AXI_DATA0_bid;
  input DPU0_M_AXI_DATA0_bready;
  output [1:0]DPU0_M_AXI_DATA0_bresp;
  output DPU0_M_AXI_DATA0_bvalid;
  output [127:0]DPU0_M_AXI_DATA0_rdata;
  output [1:0]DPU0_M_AXI_DATA0_rid;
  output DPU0_M_AXI_DATA0_rlast;
  input DPU0_M_AXI_DATA0_rready;
  output [1:0]DPU0_M_AXI_DATA0_rresp;
  output DPU0_M_AXI_DATA0_rvalid;
  input [127:0]DPU0_M_AXI_DATA0_wdata;
  input DPU0_M_AXI_DATA0_wlast;
  output DPU0_M_AXI_DATA0_wready;
  input [15:0]DPU0_M_AXI_DATA0_wstrb;
  input DPU0_M_AXI_DATA0_wvalid;
  input [39:0]DPU0_M_AXI_DATA1_araddr;
  input [1:0]DPU0_M_AXI_DATA1_arburst;
  input [3:0]DPU0_M_AXI_DATA1_arcache;
  input [1:0]DPU0_M_AXI_DATA1_arid;
  input [7:0]DPU0_M_AXI_DATA1_arlen;
  input [0:0]DPU0_M_AXI_DATA1_arlock;
  input [2:0]DPU0_M_AXI_DATA1_arprot;
  input [3:0]DPU0_M_AXI_DATA1_arqos;
  output DPU0_M_AXI_DATA1_arready;
  input [2:0]DPU0_M_AXI_DATA1_arsize;
  input [0:0]DPU0_M_AXI_DATA1_aruser;
  input DPU0_M_AXI_DATA1_arvalid;
  input [39:0]DPU0_M_AXI_DATA1_awaddr;
  input [1:0]DPU0_M_AXI_DATA1_awburst;
  input [3:0]DPU0_M_AXI_DATA1_awcache;
  input [1:0]DPU0_M_AXI_DATA1_awid;
  input [7:0]DPU0_M_AXI_DATA1_awlen;
  input [0:0]DPU0_M_AXI_DATA1_awlock;
  input [2:0]DPU0_M_AXI_DATA1_awprot;
  input [3:0]DPU0_M_AXI_DATA1_awqos;
  output DPU0_M_AXI_DATA1_awready;
  input [2:0]DPU0_M_AXI_DATA1_awsize;
  input [0:0]DPU0_M_AXI_DATA1_awuser;
  input DPU0_M_AXI_DATA1_awvalid;
  output [1:0]DPU0_M_AXI_DATA1_bid;
  input DPU0_M_AXI_DATA1_bready;
  output [1:0]DPU0_M_AXI_DATA1_bresp;
  output DPU0_M_AXI_DATA1_bvalid;
  output [127:0]DPU0_M_AXI_DATA1_rdata;
  output [1:0]DPU0_M_AXI_DATA1_rid;
  output DPU0_M_AXI_DATA1_rlast;
  input DPU0_M_AXI_DATA1_rready;
  output [1:0]DPU0_M_AXI_DATA1_rresp;
  output DPU0_M_AXI_DATA1_rvalid;
  input [127:0]DPU0_M_AXI_DATA1_wdata;
  input DPU0_M_AXI_DATA1_wlast;
  output DPU0_M_AXI_DATA1_wready;
  input [15:0]DPU0_M_AXI_DATA1_wstrb;
  input DPU0_M_AXI_DATA1_wvalid;
  input [39:0]DPU0_M_AXI_INSTR_araddr;
  input [1:0]DPU0_M_AXI_INSTR_arburst;
  input [3:0]DPU0_M_AXI_INSTR_arcache;
  input [1:0]DPU0_M_AXI_INSTR_arid;
  input [7:0]DPU0_M_AXI_INSTR_arlen;
  input [0:0]DPU0_M_AXI_INSTR_arlock;
  input [2:0]DPU0_M_AXI_INSTR_arprot;
  input [3:0]DPU0_M_AXI_INSTR_arqos;
  output DPU0_M_AXI_INSTR_arready;
  input [2:0]DPU0_M_AXI_INSTR_arsize;
  input [0:0]DPU0_M_AXI_INSTR_aruser;
  input DPU0_M_AXI_INSTR_arvalid;
  input [39:0]DPU0_M_AXI_INSTR_awaddr;
  input [1:0]DPU0_M_AXI_INSTR_awburst;
  input [3:0]DPU0_M_AXI_INSTR_awcache;
  input [1:0]DPU0_M_AXI_INSTR_awid;
  input [7:0]DPU0_M_AXI_INSTR_awlen;
  input [0:0]DPU0_M_AXI_INSTR_awlock;
  input [2:0]DPU0_M_AXI_INSTR_awprot;
  input [3:0]DPU0_M_AXI_INSTR_awqos;
  output DPU0_M_AXI_INSTR_awready;
  input [2:0]DPU0_M_AXI_INSTR_awsize;
  input [0:0]DPU0_M_AXI_INSTR_awuser;
  input DPU0_M_AXI_INSTR_awvalid;
  output [1:0]DPU0_M_AXI_INSTR_bid;
  input DPU0_M_AXI_INSTR_bready;
  output [1:0]DPU0_M_AXI_INSTR_bresp;
  output DPU0_M_AXI_INSTR_bvalid;
  output [31:0]DPU0_M_AXI_INSTR_rdata;
  output [1:0]DPU0_M_AXI_INSTR_rid;
  output DPU0_M_AXI_INSTR_rlast;
  input DPU0_M_AXI_INSTR_rready;
  output [1:0]DPU0_M_AXI_INSTR_rresp;
  output DPU0_M_AXI_INSTR_rvalid;
  input [31:0]DPU0_M_AXI_INSTR_wdata;
  input DPU0_M_AXI_INSTR_wlast;
  output DPU0_M_AXI_INSTR_wready;
  input [3:0]DPU0_M_AXI_INSTR_wstrb;
  input DPU0_M_AXI_INSTR_wvalid;
  input GHP_CLK_I;
  output GHP_CLK_O;
  input GHP_RSTn;
  output [39:0]M_AXI_HP0_FPD_araddr;
  output [1:0]M_AXI_HP0_FPD_arburst;
  output [3:0]M_AXI_HP0_FPD_arcache;
  output [1:0]M_AXI_HP0_FPD_arid;
  output [7:0]M_AXI_HP0_FPD_arlen;
  output M_AXI_HP0_FPD_arlock;
  output [2:0]M_AXI_HP0_FPD_arprot;
  output [3:0]M_AXI_HP0_FPD_arqos;
  input M_AXI_HP0_FPD_arready;
  output [2:0]M_AXI_HP0_FPD_arsize;
  output M_AXI_HP0_FPD_aruser;
  output M_AXI_HP0_FPD_arvalid;
  output [39:0]M_AXI_HP0_FPD_awaddr;
  output [1:0]M_AXI_HP0_FPD_awburst;
  output [3:0]M_AXI_HP0_FPD_awcache;
  output [1:0]M_AXI_HP0_FPD_awid;
  output [7:0]M_AXI_HP0_FPD_awlen;
  output M_AXI_HP0_FPD_awlock;
  output [2:0]M_AXI_HP0_FPD_awprot;
  output [3:0]M_AXI_HP0_FPD_awqos;
  input M_AXI_HP0_FPD_awready;
  output [2:0]M_AXI_HP0_FPD_awsize;
  output M_AXI_HP0_FPD_awuser;
  output M_AXI_HP0_FPD_awvalid;
  input [5:0]M_AXI_HP0_FPD_bid;
  output M_AXI_HP0_FPD_bready;
  input [1:0]M_AXI_HP0_FPD_bresp;
  input M_AXI_HP0_FPD_bvalid;
  input [127:0]M_AXI_HP0_FPD_rdata;
  input [5:0]M_AXI_HP0_FPD_rid;
  input M_AXI_HP0_FPD_rlast;
  output M_AXI_HP0_FPD_rready;
  input [1:0]M_AXI_HP0_FPD_rresp;
  input M_AXI_HP0_FPD_rvalid;
  output [127:0]M_AXI_HP0_FPD_wdata;
  output M_AXI_HP0_FPD_wlast;
  input M_AXI_HP0_FPD_wready;
  output [15:0]M_AXI_HP0_FPD_wstrb;
  output M_AXI_HP0_FPD_wvalid;
  output [39:0]M_AXI_HP1_FPD_araddr;
  output [1:0]M_AXI_HP1_FPD_arburst;
  output [3:0]M_AXI_HP1_FPD_arcache;
  output [1:0]M_AXI_HP1_FPD_arid;
  output [7:0]M_AXI_HP1_FPD_arlen;
  output M_AXI_HP1_FPD_arlock;
  output [2:0]M_AXI_HP1_FPD_arprot;
  output [3:0]M_AXI_HP1_FPD_arqos;
  input M_AXI_HP1_FPD_arready;
  output [2:0]M_AXI_HP1_FPD_arsize;
  output M_AXI_HP1_FPD_aruser;
  output M_AXI_HP1_FPD_arvalid;
  output [39:0]M_AXI_HP1_FPD_awaddr;
  output [1:0]M_AXI_HP1_FPD_awburst;
  output [3:0]M_AXI_HP1_FPD_awcache;
  output [1:0]M_AXI_HP1_FPD_awid;
  output [7:0]M_AXI_HP1_FPD_awlen;
  output M_AXI_HP1_FPD_awlock;
  output [2:0]M_AXI_HP1_FPD_awprot;
  output [3:0]M_AXI_HP1_FPD_awqos;
  input M_AXI_HP1_FPD_awready;
  output [2:0]M_AXI_HP1_FPD_awsize;
  output M_AXI_HP1_FPD_awuser;
  output M_AXI_HP1_FPD_awvalid;
  input [5:0]M_AXI_HP1_FPD_bid;
  output M_AXI_HP1_FPD_bready;
  input [1:0]M_AXI_HP1_FPD_bresp;
  input M_AXI_HP1_FPD_bvalid;
  input [127:0]M_AXI_HP1_FPD_rdata;
  input [5:0]M_AXI_HP1_FPD_rid;
  input M_AXI_HP1_FPD_rlast;
  output M_AXI_HP1_FPD_rready;
  input [1:0]M_AXI_HP1_FPD_rresp;
  input M_AXI_HP1_FPD_rvalid;
  output [127:0]M_AXI_HP1_FPD_wdata;
  output M_AXI_HP1_FPD_wlast;
  input M_AXI_HP1_FPD_wready;
  output [15:0]M_AXI_HP1_FPD_wstrb;
  output M_AXI_HP1_FPD_wvalid;
  output [39:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [1:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [39:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [1:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [5:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [31:0]M_AXI_LPD_rdata;
  input [5:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [31:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [3:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  input RSTn_INTC;
  input RSTn_PERI;

  wire CLK_1;
  wire [39:0]DPU0_M_AXI_DATA0_1_ARADDR;
  wire [1:0]DPU0_M_AXI_DATA0_1_ARBURST;
  wire [3:0]DPU0_M_AXI_DATA0_1_ARCACHE;
  wire [1:0]DPU0_M_AXI_DATA0_1_ARID;
  wire [7:0]DPU0_M_AXI_DATA0_1_ARLEN;
  wire [0:0]DPU0_M_AXI_DATA0_1_ARLOCK;
  wire [2:0]DPU0_M_AXI_DATA0_1_ARPROT;
  wire [3:0]DPU0_M_AXI_DATA0_1_ARQOS;
  wire DPU0_M_AXI_DATA0_1_ARREADY;
  wire [2:0]DPU0_M_AXI_DATA0_1_ARSIZE;
  wire [0:0]DPU0_M_AXI_DATA0_1_ARUSER;
  wire DPU0_M_AXI_DATA0_1_ARVALID;
  wire [39:0]DPU0_M_AXI_DATA0_1_AWADDR;
  wire [1:0]DPU0_M_AXI_DATA0_1_AWBURST;
  wire [3:0]DPU0_M_AXI_DATA0_1_AWCACHE;
  wire [1:0]DPU0_M_AXI_DATA0_1_AWID;
  wire [7:0]DPU0_M_AXI_DATA0_1_AWLEN;
  wire [0:0]DPU0_M_AXI_DATA0_1_AWLOCK;
  wire [2:0]DPU0_M_AXI_DATA0_1_AWPROT;
  wire [3:0]DPU0_M_AXI_DATA0_1_AWQOS;
  wire DPU0_M_AXI_DATA0_1_AWREADY;
  wire [2:0]DPU0_M_AXI_DATA0_1_AWSIZE;
  wire [0:0]DPU0_M_AXI_DATA0_1_AWUSER;
  wire DPU0_M_AXI_DATA0_1_AWVALID;
  wire [1:0]DPU0_M_AXI_DATA0_1_BID;
  wire DPU0_M_AXI_DATA0_1_BREADY;
  wire [1:0]DPU0_M_AXI_DATA0_1_BRESP;
  wire DPU0_M_AXI_DATA0_1_BVALID;
  wire [127:0]DPU0_M_AXI_DATA0_1_RDATA;
  wire [1:0]DPU0_M_AXI_DATA0_1_RID;
  wire DPU0_M_AXI_DATA0_1_RLAST;
  wire DPU0_M_AXI_DATA0_1_RREADY;
  wire [1:0]DPU0_M_AXI_DATA0_1_RRESP;
  wire DPU0_M_AXI_DATA0_1_RVALID;
  wire [127:0]DPU0_M_AXI_DATA0_1_WDATA;
  wire DPU0_M_AXI_DATA0_1_WLAST;
  wire DPU0_M_AXI_DATA0_1_WREADY;
  wire [15:0]DPU0_M_AXI_DATA0_1_WSTRB;
  wire DPU0_M_AXI_DATA0_1_WVALID;
  wire [39:0]DPU0_M_AXI_DATA1_1_ARADDR;
  wire [1:0]DPU0_M_AXI_DATA1_1_ARBURST;
  wire [3:0]DPU0_M_AXI_DATA1_1_ARCACHE;
  wire [1:0]DPU0_M_AXI_DATA1_1_ARID;
  wire [7:0]DPU0_M_AXI_DATA1_1_ARLEN;
  wire [0:0]DPU0_M_AXI_DATA1_1_ARLOCK;
  wire [2:0]DPU0_M_AXI_DATA1_1_ARPROT;
  wire [3:0]DPU0_M_AXI_DATA1_1_ARQOS;
  wire DPU0_M_AXI_DATA1_1_ARREADY;
  wire [2:0]DPU0_M_AXI_DATA1_1_ARSIZE;
  wire [0:0]DPU0_M_AXI_DATA1_1_ARUSER;
  wire DPU0_M_AXI_DATA1_1_ARVALID;
  wire [39:0]DPU0_M_AXI_DATA1_1_AWADDR;
  wire [1:0]DPU0_M_AXI_DATA1_1_AWBURST;
  wire [3:0]DPU0_M_AXI_DATA1_1_AWCACHE;
  wire [1:0]DPU0_M_AXI_DATA1_1_AWID;
  wire [7:0]DPU0_M_AXI_DATA1_1_AWLEN;
  wire [0:0]DPU0_M_AXI_DATA1_1_AWLOCK;
  wire [2:0]DPU0_M_AXI_DATA1_1_AWPROT;
  wire [3:0]DPU0_M_AXI_DATA1_1_AWQOS;
  wire DPU0_M_AXI_DATA1_1_AWREADY;
  wire [2:0]DPU0_M_AXI_DATA1_1_AWSIZE;
  wire [0:0]DPU0_M_AXI_DATA1_1_AWUSER;
  wire DPU0_M_AXI_DATA1_1_AWVALID;
  wire [1:0]DPU0_M_AXI_DATA1_1_BID;
  wire DPU0_M_AXI_DATA1_1_BREADY;
  wire [1:0]DPU0_M_AXI_DATA1_1_BRESP;
  wire DPU0_M_AXI_DATA1_1_BVALID;
  wire [127:0]DPU0_M_AXI_DATA1_1_RDATA;
  wire [1:0]DPU0_M_AXI_DATA1_1_RID;
  wire DPU0_M_AXI_DATA1_1_RLAST;
  wire DPU0_M_AXI_DATA1_1_RREADY;
  wire [1:0]DPU0_M_AXI_DATA1_1_RRESP;
  wire DPU0_M_AXI_DATA1_1_RVALID;
  wire [127:0]DPU0_M_AXI_DATA1_1_WDATA;
  wire DPU0_M_AXI_DATA1_1_WLAST;
  wire DPU0_M_AXI_DATA1_1_WREADY;
  wire [15:0]DPU0_M_AXI_DATA1_1_WSTRB;
  wire DPU0_M_AXI_DATA1_1_WVALID;
  wire [39:0]DPU0_M_AXI_INSTR_1_ARADDR;
  wire [1:0]DPU0_M_AXI_INSTR_1_ARBURST;
  wire [3:0]DPU0_M_AXI_INSTR_1_ARCACHE;
  wire [1:0]DPU0_M_AXI_INSTR_1_ARID;
  wire [7:0]DPU0_M_AXI_INSTR_1_ARLEN;
  wire [0:0]DPU0_M_AXI_INSTR_1_ARLOCK;
  wire [2:0]DPU0_M_AXI_INSTR_1_ARPROT;
  wire [3:0]DPU0_M_AXI_INSTR_1_ARQOS;
  wire DPU0_M_AXI_INSTR_1_ARREADY;
  wire [2:0]DPU0_M_AXI_INSTR_1_ARSIZE;
  wire [0:0]DPU0_M_AXI_INSTR_1_ARUSER;
  wire DPU0_M_AXI_INSTR_1_ARVALID;
  wire [39:0]DPU0_M_AXI_INSTR_1_AWADDR;
  wire [1:0]DPU0_M_AXI_INSTR_1_AWBURST;
  wire [3:0]DPU0_M_AXI_INSTR_1_AWCACHE;
  wire [1:0]DPU0_M_AXI_INSTR_1_AWID;
  wire [7:0]DPU0_M_AXI_INSTR_1_AWLEN;
  wire [0:0]DPU0_M_AXI_INSTR_1_AWLOCK;
  wire [2:0]DPU0_M_AXI_INSTR_1_AWPROT;
  wire [3:0]DPU0_M_AXI_INSTR_1_AWQOS;
  wire DPU0_M_AXI_INSTR_1_AWREADY;
  wire [2:0]DPU0_M_AXI_INSTR_1_AWSIZE;
  wire [0:0]DPU0_M_AXI_INSTR_1_AWUSER;
  wire DPU0_M_AXI_INSTR_1_AWVALID;
  wire [1:0]DPU0_M_AXI_INSTR_1_BID;
  wire DPU0_M_AXI_INSTR_1_BREADY;
  wire [1:0]DPU0_M_AXI_INSTR_1_BRESP;
  wire DPU0_M_AXI_INSTR_1_BVALID;
  wire [31:0]DPU0_M_AXI_INSTR_1_RDATA;
  wire [1:0]DPU0_M_AXI_INSTR_1_RID;
  wire DPU0_M_AXI_INSTR_1_RLAST;
  wire DPU0_M_AXI_INSTR_1_RREADY;
  wire [1:0]DPU0_M_AXI_INSTR_1_RRESP;
  wire DPU0_M_AXI_INSTR_1_RVALID;
  wire [31:0]DPU0_M_AXI_INSTR_1_WDATA;
  wire DPU0_M_AXI_INSTR_1_WLAST;
  wire DPU0_M_AXI_INSTR_1_WREADY;
  wire [3:0]DPU0_M_AXI_INSTR_1_WSTRB;
  wire DPU0_M_AXI_INSTR_1_WVALID;
  wire GHP_CLK_I_1;
  wire GHP_RSTn_1;
  wire RSTn_INTC_1;
  wire RSTn_PERI_1;
  wire [39:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARADDR;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARBURST;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARCACHE;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARID;
  wire [7:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLEN;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLOCK;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARPROT;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARQOS;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARREADY;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARSIZE;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARUSER;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARVALID;
  wire [39:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWADDR;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWBURST;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWCACHE;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWID;
  wire [7:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLEN;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLOCK;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWPROT;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWQOS;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWREADY;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWSIZE;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWUSER;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWVALID;
  wire [5:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_BID;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_BREADY;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_BRESP;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_BVALID;
  wire [127:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_RDATA;
  wire [5:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_RID;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_RLAST;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_RREADY;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_RRESP;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_RVALID;
  wire [127:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_WDATA;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_WLAST;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_WREADY;
  wire [15:0]dpu_intc_M_AXI_HP0_FPD_M00_AXI_WSTRB;
  wire dpu_intc_M_AXI_HP0_FPD_M00_AXI_WVALID;
  wire [39:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARADDR;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARBURST;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARCACHE;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARID;
  wire [7:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLEN;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLOCK;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARPROT;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARQOS;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARREADY;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARSIZE;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARUSER;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARVALID;
  wire [39:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWADDR;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWBURST;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWCACHE;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWID;
  wire [7:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLEN;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLOCK;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWPROT;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWQOS;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWREADY;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWSIZE;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWUSER;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWVALID;
  wire [5:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_BID;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_BREADY;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_BRESP;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_BVALID;
  wire [127:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_RDATA;
  wire [5:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_RID;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_RLAST;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_RREADY;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_RRESP;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_RVALID;
  wire [127:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_WDATA;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_WLAST;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_WREADY;
  wire [15:0]dpu_intc_M_AXI_HP1_FPD_M00_AXI_WSTRB;
  wire dpu_intc_M_AXI_HP1_FPD_M00_AXI_WVALID;
  wire [39:0]dpu_intc_M_AXI_LPD_M00_AXI_ARADDR;
  wire [1:0]dpu_intc_M_AXI_LPD_M00_AXI_ARBURST;
  wire [3:0]dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE;
  wire [1:0]dpu_intc_M_AXI_LPD_M00_AXI_ARID;
  wire [7:0]dpu_intc_M_AXI_LPD_M00_AXI_ARLEN;
  wire dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK;
  wire [2:0]dpu_intc_M_AXI_LPD_M00_AXI_ARPROT;
  wire [3:0]dpu_intc_M_AXI_LPD_M00_AXI_ARQOS;
  wire dpu_intc_M_AXI_LPD_M00_AXI_ARREADY;
  wire [2:0]dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE;
  wire dpu_intc_M_AXI_LPD_M00_AXI_ARUSER;
  wire dpu_intc_M_AXI_LPD_M00_AXI_ARVALID;
  wire [39:0]dpu_intc_M_AXI_LPD_M00_AXI_AWADDR;
  wire [1:0]dpu_intc_M_AXI_LPD_M00_AXI_AWBURST;
  wire [3:0]dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE;
  wire [1:0]dpu_intc_M_AXI_LPD_M00_AXI_AWID;
  wire [7:0]dpu_intc_M_AXI_LPD_M00_AXI_AWLEN;
  wire dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK;
  wire [2:0]dpu_intc_M_AXI_LPD_M00_AXI_AWPROT;
  wire [3:0]dpu_intc_M_AXI_LPD_M00_AXI_AWQOS;
  wire dpu_intc_M_AXI_LPD_M00_AXI_AWREADY;
  wire [2:0]dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE;
  wire dpu_intc_M_AXI_LPD_M00_AXI_AWUSER;
  wire dpu_intc_M_AXI_LPD_M00_AXI_AWVALID;
  wire [5:0]dpu_intc_M_AXI_LPD_M00_AXI_BID;
  wire dpu_intc_M_AXI_LPD_M00_AXI_BREADY;
  wire [1:0]dpu_intc_M_AXI_LPD_M00_AXI_BRESP;
  wire dpu_intc_M_AXI_LPD_M00_AXI_BVALID;
  wire [31:0]dpu_intc_M_AXI_LPD_M00_AXI_RDATA;
  wire [5:0]dpu_intc_M_AXI_LPD_M00_AXI_RID;
  wire dpu_intc_M_AXI_LPD_M00_AXI_RLAST;
  wire dpu_intc_M_AXI_LPD_M00_AXI_RREADY;
  wire [1:0]dpu_intc_M_AXI_LPD_M00_AXI_RRESP;
  wire dpu_intc_M_AXI_LPD_M00_AXI_RVALID;
  wire [31:0]dpu_intc_M_AXI_LPD_M00_AXI_WDATA;
  wire dpu_intc_M_AXI_LPD_M00_AXI_WLAST;
  wire dpu_intc_M_AXI_LPD_M00_AXI_WREADY;
  wire [3:0]dpu_intc_M_AXI_LPD_M00_AXI_WSTRB;
  wire dpu_intc_M_AXI_LPD_M00_AXI_WVALID;

  assign CLK_1 = CLK;
  assign DPU0_M_AXI_DATA0_1_ARADDR = DPU0_M_AXI_DATA0_araddr[39:0];
  assign DPU0_M_AXI_DATA0_1_ARBURST = DPU0_M_AXI_DATA0_arburst[1:0];
  assign DPU0_M_AXI_DATA0_1_ARCACHE = DPU0_M_AXI_DATA0_arcache[3:0];
  assign DPU0_M_AXI_DATA0_1_ARID = DPU0_M_AXI_DATA0_arid[1:0];
  assign DPU0_M_AXI_DATA0_1_ARLEN = DPU0_M_AXI_DATA0_arlen[7:0];
  assign DPU0_M_AXI_DATA0_1_ARLOCK = DPU0_M_AXI_DATA0_arlock[0];
  assign DPU0_M_AXI_DATA0_1_ARPROT = DPU0_M_AXI_DATA0_arprot[2:0];
  assign DPU0_M_AXI_DATA0_1_ARQOS = DPU0_M_AXI_DATA0_arqos[3:0];
  assign DPU0_M_AXI_DATA0_1_ARSIZE = DPU0_M_AXI_DATA0_arsize[2:0];
  assign DPU0_M_AXI_DATA0_1_ARUSER = DPU0_M_AXI_DATA0_aruser[0];
  assign DPU0_M_AXI_DATA0_1_ARVALID = DPU0_M_AXI_DATA0_arvalid;
  assign DPU0_M_AXI_DATA0_1_AWADDR = DPU0_M_AXI_DATA0_awaddr[39:0];
  assign DPU0_M_AXI_DATA0_1_AWBURST = DPU0_M_AXI_DATA0_awburst[1:0];
  assign DPU0_M_AXI_DATA0_1_AWCACHE = DPU0_M_AXI_DATA0_awcache[3:0];
  assign DPU0_M_AXI_DATA0_1_AWID = DPU0_M_AXI_DATA0_awid[1:0];
  assign DPU0_M_AXI_DATA0_1_AWLEN = DPU0_M_AXI_DATA0_awlen[7:0];
  assign DPU0_M_AXI_DATA0_1_AWLOCK = DPU0_M_AXI_DATA0_awlock[0];
  assign DPU0_M_AXI_DATA0_1_AWPROT = DPU0_M_AXI_DATA0_awprot[2:0];
  assign DPU0_M_AXI_DATA0_1_AWQOS = DPU0_M_AXI_DATA0_awqos[3:0];
  assign DPU0_M_AXI_DATA0_1_AWSIZE = DPU0_M_AXI_DATA0_awsize[2:0];
  assign DPU0_M_AXI_DATA0_1_AWUSER = DPU0_M_AXI_DATA0_awuser[0];
  assign DPU0_M_AXI_DATA0_1_AWVALID = DPU0_M_AXI_DATA0_awvalid;
  assign DPU0_M_AXI_DATA0_1_BREADY = DPU0_M_AXI_DATA0_bready;
  assign DPU0_M_AXI_DATA0_1_RREADY = DPU0_M_AXI_DATA0_rready;
  assign DPU0_M_AXI_DATA0_1_WDATA = DPU0_M_AXI_DATA0_wdata[127:0];
  assign DPU0_M_AXI_DATA0_1_WLAST = DPU0_M_AXI_DATA0_wlast;
  assign DPU0_M_AXI_DATA0_1_WSTRB = DPU0_M_AXI_DATA0_wstrb[15:0];
  assign DPU0_M_AXI_DATA0_1_WVALID = DPU0_M_AXI_DATA0_wvalid;
  assign DPU0_M_AXI_DATA0_arready = DPU0_M_AXI_DATA0_1_ARREADY;
  assign DPU0_M_AXI_DATA0_awready = DPU0_M_AXI_DATA0_1_AWREADY;
  assign DPU0_M_AXI_DATA0_bid[1:0] = DPU0_M_AXI_DATA0_1_BID;
  assign DPU0_M_AXI_DATA0_bresp[1:0] = DPU0_M_AXI_DATA0_1_BRESP;
  assign DPU0_M_AXI_DATA0_bvalid = DPU0_M_AXI_DATA0_1_BVALID;
  assign DPU0_M_AXI_DATA0_rdata[127:0] = DPU0_M_AXI_DATA0_1_RDATA;
  assign DPU0_M_AXI_DATA0_rid[1:0] = DPU0_M_AXI_DATA0_1_RID;
  assign DPU0_M_AXI_DATA0_rlast = DPU0_M_AXI_DATA0_1_RLAST;
  assign DPU0_M_AXI_DATA0_rresp[1:0] = DPU0_M_AXI_DATA0_1_RRESP;
  assign DPU0_M_AXI_DATA0_rvalid = DPU0_M_AXI_DATA0_1_RVALID;
  assign DPU0_M_AXI_DATA0_wready = DPU0_M_AXI_DATA0_1_WREADY;
  assign DPU0_M_AXI_DATA1_1_ARADDR = DPU0_M_AXI_DATA1_araddr[39:0];
  assign DPU0_M_AXI_DATA1_1_ARBURST = DPU0_M_AXI_DATA1_arburst[1:0];
  assign DPU0_M_AXI_DATA1_1_ARCACHE = DPU0_M_AXI_DATA1_arcache[3:0];
  assign DPU0_M_AXI_DATA1_1_ARID = DPU0_M_AXI_DATA1_arid[1:0];
  assign DPU0_M_AXI_DATA1_1_ARLEN = DPU0_M_AXI_DATA1_arlen[7:0];
  assign DPU0_M_AXI_DATA1_1_ARLOCK = DPU0_M_AXI_DATA1_arlock[0];
  assign DPU0_M_AXI_DATA1_1_ARPROT = DPU0_M_AXI_DATA1_arprot[2:0];
  assign DPU0_M_AXI_DATA1_1_ARQOS = DPU0_M_AXI_DATA1_arqos[3:0];
  assign DPU0_M_AXI_DATA1_1_ARSIZE = DPU0_M_AXI_DATA1_arsize[2:0];
  assign DPU0_M_AXI_DATA1_1_ARUSER = DPU0_M_AXI_DATA1_aruser[0];
  assign DPU0_M_AXI_DATA1_1_ARVALID = DPU0_M_AXI_DATA1_arvalid;
  assign DPU0_M_AXI_DATA1_1_AWADDR = DPU0_M_AXI_DATA1_awaddr[39:0];
  assign DPU0_M_AXI_DATA1_1_AWBURST = DPU0_M_AXI_DATA1_awburst[1:0];
  assign DPU0_M_AXI_DATA1_1_AWCACHE = DPU0_M_AXI_DATA1_awcache[3:0];
  assign DPU0_M_AXI_DATA1_1_AWID = DPU0_M_AXI_DATA1_awid[1:0];
  assign DPU0_M_AXI_DATA1_1_AWLEN = DPU0_M_AXI_DATA1_awlen[7:0];
  assign DPU0_M_AXI_DATA1_1_AWLOCK = DPU0_M_AXI_DATA1_awlock[0];
  assign DPU0_M_AXI_DATA1_1_AWPROT = DPU0_M_AXI_DATA1_awprot[2:0];
  assign DPU0_M_AXI_DATA1_1_AWQOS = DPU0_M_AXI_DATA1_awqos[3:0];
  assign DPU0_M_AXI_DATA1_1_AWSIZE = DPU0_M_AXI_DATA1_awsize[2:0];
  assign DPU0_M_AXI_DATA1_1_AWUSER = DPU0_M_AXI_DATA1_awuser[0];
  assign DPU0_M_AXI_DATA1_1_AWVALID = DPU0_M_AXI_DATA1_awvalid;
  assign DPU0_M_AXI_DATA1_1_BREADY = DPU0_M_AXI_DATA1_bready;
  assign DPU0_M_AXI_DATA1_1_RREADY = DPU0_M_AXI_DATA1_rready;
  assign DPU0_M_AXI_DATA1_1_WDATA = DPU0_M_AXI_DATA1_wdata[127:0];
  assign DPU0_M_AXI_DATA1_1_WLAST = DPU0_M_AXI_DATA1_wlast;
  assign DPU0_M_AXI_DATA1_1_WSTRB = DPU0_M_AXI_DATA1_wstrb[15:0];
  assign DPU0_M_AXI_DATA1_1_WVALID = DPU0_M_AXI_DATA1_wvalid;
  assign DPU0_M_AXI_DATA1_arready = DPU0_M_AXI_DATA1_1_ARREADY;
  assign DPU0_M_AXI_DATA1_awready = DPU0_M_AXI_DATA1_1_AWREADY;
  assign DPU0_M_AXI_DATA1_bid[1:0] = DPU0_M_AXI_DATA1_1_BID;
  assign DPU0_M_AXI_DATA1_bresp[1:0] = DPU0_M_AXI_DATA1_1_BRESP;
  assign DPU0_M_AXI_DATA1_bvalid = DPU0_M_AXI_DATA1_1_BVALID;
  assign DPU0_M_AXI_DATA1_rdata[127:0] = DPU0_M_AXI_DATA1_1_RDATA;
  assign DPU0_M_AXI_DATA1_rid[1:0] = DPU0_M_AXI_DATA1_1_RID;
  assign DPU0_M_AXI_DATA1_rlast = DPU0_M_AXI_DATA1_1_RLAST;
  assign DPU0_M_AXI_DATA1_rresp[1:0] = DPU0_M_AXI_DATA1_1_RRESP;
  assign DPU0_M_AXI_DATA1_rvalid = DPU0_M_AXI_DATA1_1_RVALID;
  assign DPU0_M_AXI_DATA1_wready = DPU0_M_AXI_DATA1_1_WREADY;
  assign DPU0_M_AXI_INSTR_1_ARADDR = DPU0_M_AXI_INSTR_araddr[39:0];
  assign DPU0_M_AXI_INSTR_1_ARBURST = DPU0_M_AXI_INSTR_arburst[1:0];
  assign DPU0_M_AXI_INSTR_1_ARCACHE = DPU0_M_AXI_INSTR_arcache[3:0];
  assign DPU0_M_AXI_INSTR_1_ARID = DPU0_M_AXI_INSTR_arid[1:0];
  assign DPU0_M_AXI_INSTR_1_ARLEN = DPU0_M_AXI_INSTR_arlen[7:0];
  assign DPU0_M_AXI_INSTR_1_ARLOCK = DPU0_M_AXI_INSTR_arlock[0];
  assign DPU0_M_AXI_INSTR_1_ARPROT = DPU0_M_AXI_INSTR_arprot[2:0];
  assign DPU0_M_AXI_INSTR_1_ARQOS = DPU0_M_AXI_INSTR_arqos[3:0];
  assign DPU0_M_AXI_INSTR_1_ARSIZE = DPU0_M_AXI_INSTR_arsize[2:0];
  assign DPU0_M_AXI_INSTR_1_ARUSER = DPU0_M_AXI_INSTR_aruser[0];
  assign DPU0_M_AXI_INSTR_1_ARVALID = DPU0_M_AXI_INSTR_arvalid;
  assign DPU0_M_AXI_INSTR_1_AWADDR = DPU0_M_AXI_INSTR_awaddr[39:0];
  assign DPU0_M_AXI_INSTR_1_AWBURST = DPU0_M_AXI_INSTR_awburst[1:0];
  assign DPU0_M_AXI_INSTR_1_AWCACHE = DPU0_M_AXI_INSTR_awcache[3:0];
  assign DPU0_M_AXI_INSTR_1_AWID = DPU0_M_AXI_INSTR_awid[1:0];
  assign DPU0_M_AXI_INSTR_1_AWLEN = DPU0_M_AXI_INSTR_awlen[7:0];
  assign DPU0_M_AXI_INSTR_1_AWLOCK = DPU0_M_AXI_INSTR_awlock[0];
  assign DPU0_M_AXI_INSTR_1_AWPROT = DPU0_M_AXI_INSTR_awprot[2:0];
  assign DPU0_M_AXI_INSTR_1_AWQOS = DPU0_M_AXI_INSTR_awqos[3:0];
  assign DPU0_M_AXI_INSTR_1_AWSIZE = DPU0_M_AXI_INSTR_awsize[2:0];
  assign DPU0_M_AXI_INSTR_1_AWUSER = DPU0_M_AXI_INSTR_awuser[0];
  assign DPU0_M_AXI_INSTR_1_AWVALID = DPU0_M_AXI_INSTR_awvalid;
  assign DPU0_M_AXI_INSTR_1_BREADY = DPU0_M_AXI_INSTR_bready;
  assign DPU0_M_AXI_INSTR_1_RREADY = DPU0_M_AXI_INSTR_rready;
  assign DPU0_M_AXI_INSTR_1_WDATA = DPU0_M_AXI_INSTR_wdata[31:0];
  assign DPU0_M_AXI_INSTR_1_WLAST = DPU0_M_AXI_INSTR_wlast;
  assign DPU0_M_AXI_INSTR_1_WSTRB = DPU0_M_AXI_INSTR_wstrb[3:0];
  assign DPU0_M_AXI_INSTR_1_WVALID = DPU0_M_AXI_INSTR_wvalid;
  assign DPU0_M_AXI_INSTR_arready = DPU0_M_AXI_INSTR_1_ARREADY;
  assign DPU0_M_AXI_INSTR_awready = DPU0_M_AXI_INSTR_1_AWREADY;
  assign DPU0_M_AXI_INSTR_bid[1:0] = DPU0_M_AXI_INSTR_1_BID;
  assign DPU0_M_AXI_INSTR_bresp[1:0] = DPU0_M_AXI_INSTR_1_BRESP;
  assign DPU0_M_AXI_INSTR_bvalid = DPU0_M_AXI_INSTR_1_BVALID;
  assign DPU0_M_AXI_INSTR_rdata[31:0] = DPU0_M_AXI_INSTR_1_RDATA;
  assign DPU0_M_AXI_INSTR_rid[1:0] = DPU0_M_AXI_INSTR_1_RID;
  assign DPU0_M_AXI_INSTR_rlast = DPU0_M_AXI_INSTR_1_RLAST;
  assign DPU0_M_AXI_INSTR_rresp[1:0] = DPU0_M_AXI_INSTR_1_RRESP;
  assign DPU0_M_AXI_INSTR_rvalid = DPU0_M_AXI_INSTR_1_RVALID;
  assign DPU0_M_AXI_INSTR_wready = DPU0_M_AXI_INSTR_1_WREADY;
  assign GHP_CLK_I_1 = GHP_CLK_I;
  assign GHP_CLK_O = GHP_CLK_I_1;
  assign GHP_RSTn_1 = GHP_RSTn;
  assign M_AXI_HP0_FPD_araddr[39:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARADDR;
  assign M_AXI_HP0_FPD_arburst[1:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARBURST;
  assign M_AXI_HP0_FPD_arcache[3:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARCACHE;
  assign M_AXI_HP0_FPD_arid[1:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARID;
  assign M_AXI_HP0_FPD_arlen[7:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLEN;
  assign M_AXI_HP0_FPD_arlock = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLOCK;
  assign M_AXI_HP0_FPD_arprot[2:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARPROT;
  assign M_AXI_HP0_FPD_arqos[3:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARQOS;
  assign M_AXI_HP0_FPD_arsize[2:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARSIZE;
  assign M_AXI_HP0_FPD_aruser = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARUSER;
  assign M_AXI_HP0_FPD_arvalid = dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARVALID;
  assign M_AXI_HP0_FPD_awaddr[39:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWADDR;
  assign M_AXI_HP0_FPD_awburst[1:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWBURST;
  assign M_AXI_HP0_FPD_awcache[3:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWCACHE;
  assign M_AXI_HP0_FPD_awid[1:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWID;
  assign M_AXI_HP0_FPD_awlen[7:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLEN;
  assign M_AXI_HP0_FPD_awlock = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLOCK;
  assign M_AXI_HP0_FPD_awprot[2:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWPROT;
  assign M_AXI_HP0_FPD_awqos[3:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWQOS;
  assign M_AXI_HP0_FPD_awsize[2:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWSIZE;
  assign M_AXI_HP0_FPD_awuser = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWUSER;
  assign M_AXI_HP0_FPD_awvalid = dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWVALID;
  assign M_AXI_HP0_FPD_bready = dpu_intc_M_AXI_HP0_FPD_M00_AXI_BREADY;
  assign M_AXI_HP0_FPD_rready = dpu_intc_M_AXI_HP0_FPD_M00_AXI_RREADY;
  assign M_AXI_HP0_FPD_wdata[127:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_WDATA;
  assign M_AXI_HP0_FPD_wlast = dpu_intc_M_AXI_HP0_FPD_M00_AXI_WLAST;
  assign M_AXI_HP0_FPD_wstrb[15:0] = dpu_intc_M_AXI_HP0_FPD_M00_AXI_WSTRB;
  assign M_AXI_HP0_FPD_wvalid = dpu_intc_M_AXI_HP0_FPD_M00_AXI_WVALID;
  assign M_AXI_HP1_FPD_araddr[39:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARADDR;
  assign M_AXI_HP1_FPD_arburst[1:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARBURST;
  assign M_AXI_HP1_FPD_arcache[3:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARCACHE;
  assign M_AXI_HP1_FPD_arid[1:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARID;
  assign M_AXI_HP1_FPD_arlen[7:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLEN;
  assign M_AXI_HP1_FPD_arlock = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLOCK;
  assign M_AXI_HP1_FPD_arprot[2:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARPROT;
  assign M_AXI_HP1_FPD_arqos[3:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARQOS;
  assign M_AXI_HP1_FPD_arsize[2:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARSIZE;
  assign M_AXI_HP1_FPD_aruser = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARUSER;
  assign M_AXI_HP1_FPD_arvalid = dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARVALID;
  assign M_AXI_HP1_FPD_awaddr[39:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWADDR;
  assign M_AXI_HP1_FPD_awburst[1:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWBURST;
  assign M_AXI_HP1_FPD_awcache[3:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWCACHE;
  assign M_AXI_HP1_FPD_awid[1:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWID;
  assign M_AXI_HP1_FPD_awlen[7:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLEN;
  assign M_AXI_HP1_FPD_awlock = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLOCK;
  assign M_AXI_HP1_FPD_awprot[2:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWPROT;
  assign M_AXI_HP1_FPD_awqos[3:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWQOS;
  assign M_AXI_HP1_FPD_awsize[2:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWSIZE;
  assign M_AXI_HP1_FPD_awuser = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWUSER;
  assign M_AXI_HP1_FPD_awvalid = dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWVALID;
  assign M_AXI_HP1_FPD_bready = dpu_intc_M_AXI_HP1_FPD_M00_AXI_BREADY;
  assign M_AXI_HP1_FPD_rready = dpu_intc_M_AXI_HP1_FPD_M00_AXI_RREADY;
  assign M_AXI_HP1_FPD_wdata[127:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_WDATA;
  assign M_AXI_HP1_FPD_wlast = dpu_intc_M_AXI_HP1_FPD_M00_AXI_WLAST;
  assign M_AXI_HP1_FPD_wstrb[15:0] = dpu_intc_M_AXI_HP1_FPD_M00_AXI_WSTRB;
  assign M_AXI_HP1_FPD_wvalid = dpu_intc_M_AXI_HP1_FPD_M00_AXI_WVALID;
  assign M_AXI_LPD_araddr[39:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARADDR;
  assign M_AXI_LPD_arburst[1:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARBURST;
  assign M_AXI_LPD_arcache[3:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE;
  assign M_AXI_LPD_arid[1:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARID;
  assign M_AXI_LPD_arlen[7:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARLEN;
  assign M_AXI_LPD_arlock = dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK;
  assign M_AXI_LPD_arprot[2:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARPROT;
  assign M_AXI_LPD_arqos[3:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARQOS;
  assign M_AXI_LPD_arsize[2:0] = dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE;
  assign M_AXI_LPD_aruser = dpu_intc_M_AXI_LPD_M00_AXI_ARUSER;
  assign M_AXI_LPD_arvalid = dpu_intc_M_AXI_LPD_M00_AXI_ARVALID;
  assign M_AXI_LPD_awaddr[39:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWADDR;
  assign M_AXI_LPD_awburst[1:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWBURST;
  assign M_AXI_LPD_awcache[3:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE;
  assign M_AXI_LPD_awid[1:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWID;
  assign M_AXI_LPD_awlen[7:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWLEN;
  assign M_AXI_LPD_awlock = dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK;
  assign M_AXI_LPD_awprot[2:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWPROT;
  assign M_AXI_LPD_awqos[3:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWQOS;
  assign M_AXI_LPD_awsize[2:0] = dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE;
  assign M_AXI_LPD_awuser = dpu_intc_M_AXI_LPD_M00_AXI_AWUSER;
  assign M_AXI_LPD_awvalid = dpu_intc_M_AXI_LPD_M00_AXI_AWVALID;
  assign M_AXI_LPD_bready = dpu_intc_M_AXI_LPD_M00_AXI_BREADY;
  assign M_AXI_LPD_rready = dpu_intc_M_AXI_LPD_M00_AXI_RREADY;
  assign M_AXI_LPD_wdata[31:0] = dpu_intc_M_AXI_LPD_M00_AXI_WDATA;
  assign M_AXI_LPD_wlast = dpu_intc_M_AXI_LPD_M00_AXI_WLAST;
  assign M_AXI_LPD_wstrb[3:0] = dpu_intc_M_AXI_LPD_M00_AXI_WSTRB;
  assign M_AXI_LPD_wvalid = dpu_intc_M_AXI_LPD_M00_AXI_WVALID;
  assign RSTn_INTC_1 = RSTn_INTC;
  assign RSTn_PERI_1 = RSTn_PERI;
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARREADY = M_AXI_HP0_FPD_arready;
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWREADY = M_AXI_HP0_FPD_awready;
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_BID = M_AXI_HP0_FPD_bid[5:0];
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_BRESP = M_AXI_HP0_FPD_bresp[1:0];
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_BVALID = M_AXI_HP0_FPD_bvalid;
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_RDATA = M_AXI_HP0_FPD_rdata[127:0];
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_RID = M_AXI_HP0_FPD_rid[5:0];
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_RLAST = M_AXI_HP0_FPD_rlast;
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_RRESP = M_AXI_HP0_FPD_rresp[1:0];
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_RVALID = M_AXI_HP0_FPD_rvalid;
  assign dpu_intc_M_AXI_HP0_FPD_M00_AXI_WREADY = M_AXI_HP0_FPD_wready;
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARREADY = M_AXI_HP1_FPD_arready;
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWREADY = M_AXI_HP1_FPD_awready;
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_BID = M_AXI_HP1_FPD_bid[5:0];
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_BRESP = M_AXI_HP1_FPD_bresp[1:0];
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_BVALID = M_AXI_HP1_FPD_bvalid;
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_RDATA = M_AXI_HP1_FPD_rdata[127:0];
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_RID = M_AXI_HP1_FPD_rid[5:0];
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_RLAST = M_AXI_HP1_FPD_rlast;
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_RRESP = M_AXI_HP1_FPD_rresp[1:0];
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_RVALID = M_AXI_HP1_FPD_rvalid;
  assign dpu_intc_M_AXI_HP1_FPD_M00_AXI_WREADY = M_AXI_HP1_FPD_wready;
  assign dpu_intc_M_AXI_LPD_M00_AXI_ARREADY = M_AXI_LPD_arready;
  assign dpu_intc_M_AXI_LPD_M00_AXI_AWREADY = M_AXI_LPD_awready;
  assign dpu_intc_M_AXI_LPD_M00_AXI_BID = M_AXI_LPD_bid[5:0];
  assign dpu_intc_M_AXI_LPD_M00_AXI_BRESP = M_AXI_LPD_bresp[1:0];
  assign dpu_intc_M_AXI_LPD_M00_AXI_BVALID = M_AXI_LPD_bvalid;
  assign dpu_intc_M_AXI_LPD_M00_AXI_RDATA = M_AXI_LPD_rdata[31:0];
  assign dpu_intc_M_AXI_LPD_M00_AXI_RID = M_AXI_LPD_rid[5:0];
  assign dpu_intc_M_AXI_LPD_M00_AXI_RLAST = M_AXI_LPD_rlast;
  assign dpu_intc_M_AXI_LPD_M00_AXI_RRESP = M_AXI_LPD_rresp[1:0];
  assign dpu_intc_M_AXI_LPD_M00_AXI_RVALID = M_AXI_LPD_rvalid;
  assign dpu_intc_M_AXI_LPD_M00_AXI_WREADY = M_AXI_LPD_wready;
  top_dpu_intc_M_AXI_HP0_FPD_0 dpu_intc_M_AXI_HP0_FPD
       (.ACLK(CLK_1),
        .ARESETN(RSTn_INTC_1),
        .M00_ACLK(GHP_CLK_I_1),
        .M00_ARESETN(GHP_RSTn_1),
        .M00_AXI_araddr(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARADDR),
        .M00_AXI_arburst(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARBURST),
        .M00_AXI_arcache(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARCACHE),
        .M00_AXI_arid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARID),
        .M00_AXI_arlen(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLEN),
        .M00_AXI_arlock(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLOCK),
        .M00_AXI_arprot(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARPROT),
        .M00_AXI_arqos(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARQOS),
        .M00_AXI_arready(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARREADY),
        .M00_AXI_arsize(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARSIZE),
        .M00_AXI_aruser(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARUSER),
        .M00_AXI_arvalid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARVALID),
        .M00_AXI_awaddr(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWADDR),
        .M00_AXI_awburst(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWBURST),
        .M00_AXI_awcache(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWCACHE),
        .M00_AXI_awid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWID),
        .M00_AXI_awlen(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLEN),
        .M00_AXI_awlock(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLOCK),
        .M00_AXI_awprot(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWPROT),
        .M00_AXI_awqos(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWQOS),
        .M00_AXI_awready(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWREADY),
        .M00_AXI_awsize(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWSIZE),
        .M00_AXI_awuser(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWUSER),
        .M00_AXI_awvalid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWVALID),
        .M00_AXI_bid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_BID),
        .M00_AXI_bready(dpu_intc_M_AXI_HP0_FPD_M00_AXI_BREADY),
        .M00_AXI_bresp(dpu_intc_M_AXI_HP0_FPD_M00_AXI_BRESP),
        .M00_AXI_bvalid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_BVALID),
        .M00_AXI_rdata(dpu_intc_M_AXI_HP0_FPD_M00_AXI_RDATA),
        .M00_AXI_rid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_RID),
        .M00_AXI_rlast(dpu_intc_M_AXI_HP0_FPD_M00_AXI_RLAST),
        .M00_AXI_rready(dpu_intc_M_AXI_HP0_FPD_M00_AXI_RREADY),
        .M00_AXI_rresp(dpu_intc_M_AXI_HP0_FPD_M00_AXI_RRESP),
        .M00_AXI_rvalid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_RVALID),
        .M00_AXI_wdata(dpu_intc_M_AXI_HP0_FPD_M00_AXI_WDATA),
        .M00_AXI_wlast(dpu_intc_M_AXI_HP0_FPD_M00_AXI_WLAST),
        .M00_AXI_wready(dpu_intc_M_AXI_HP0_FPD_M00_AXI_WREADY),
        .M00_AXI_wstrb(dpu_intc_M_AXI_HP0_FPD_M00_AXI_WSTRB),
        .M00_AXI_wvalid(dpu_intc_M_AXI_HP0_FPD_M00_AXI_WVALID),
        .S00_ACLK(CLK_1),
        .S00_ARESETN(RSTn_PERI_1),
        .S00_AXI_araddr(DPU0_M_AXI_DATA0_1_ARADDR),
        .S00_AXI_arburst(DPU0_M_AXI_DATA0_1_ARBURST),
        .S00_AXI_arcache(DPU0_M_AXI_DATA0_1_ARCACHE),
        .S00_AXI_arid(DPU0_M_AXI_DATA0_1_ARID),
        .S00_AXI_arlen(DPU0_M_AXI_DATA0_1_ARLEN),
        .S00_AXI_arlock(DPU0_M_AXI_DATA0_1_ARLOCK),
        .S00_AXI_arprot(DPU0_M_AXI_DATA0_1_ARPROT),
        .S00_AXI_arqos(DPU0_M_AXI_DATA0_1_ARQOS),
        .S00_AXI_arready(DPU0_M_AXI_DATA0_1_ARREADY),
        .S00_AXI_arsize(DPU0_M_AXI_DATA0_1_ARSIZE),
        .S00_AXI_aruser(DPU0_M_AXI_DATA0_1_ARUSER),
        .S00_AXI_arvalid(DPU0_M_AXI_DATA0_1_ARVALID),
        .S00_AXI_awaddr(DPU0_M_AXI_DATA0_1_AWADDR),
        .S00_AXI_awburst(DPU0_M_AXI_DATA0_1_AWBURST),
        .S00_AXI_awcache(DPU0_M_AXI_DATA0_1_AWCACHE),
        .S00_AXI_awid(DPU0_M_AXI_DATA0_1_AWID),
        .S00_AXI_awlen(DPU0_M_AXI_DATA0_1_AWLEN),
        .S00_AXI_awlock(DPU0_M_AXI_DATA0_1_AWLOCK),
        .S00_AXI_awprot(DPU0_M_AXI_DATA0_1_AWPROT),
        .S00_AXI_awqos(DPU0_M_AXI_DATA0_1_AWQOS),
        .S00_AXI_awready(DPU0_M_AXI_DATA0_1_AWREADY),
        .S00_AXI_awsize(DPU0_M_AXI_DATA0_1_AWSIZE),
        .S00_AXI_awuser(DPU0_M_AXI_DATA0_1_AWUSER),
        .S00_AXI_awvalid(DPU0_M_AXI_DATA0_1_AWVALID),
        .S00_AXI_bid(DPU0_M_AXI_DATA0_1_BID),
        .S00_AXI_bready(DPU0_M_AXI_DATA0_1_BREADY),
        .S00_AXI_bresp(DPU0_M_AXI_DATA0_1_BRESP),
        .S00_AXI_bvalid(DPU0_M_AXI_DATA0_1_BVALID),
        .S00_AXI_rdata(DPU0_M_AXI_DATA0_1_RDATA),
        .S00_AXI_rid(DPU0_M_AXI_DATA0_1_RID),
        .S00_AXI_rlast(DPU0_M_AXI_DATA0_1_RLAST),
        .S00_AXI_rready(DPU0_M_AXI_DATA0_1_RREADY),
        .S00_AXI_rresp(DPU0_M_AXI_DATA0_1_RRESP),
        .S00_AXI_rvalid(DPU0_M_AXI_DATA0_1_RVALID),
        .S00_AXI_wdata(DPU0_M_AXI_DATA0_1_WDATA),
        .S00_AXI_wlast(DPU0_M_AXI_DATA0_1_WLAST),
        .S00_AXI_wready(DPU0_M_AXI_DATA0_1_WREADY),
        .S00_AXI_wstrb(DPU0_M_AXI_DATA0_1_WSTRB),
        .S00_AXI_wvalid(DPU0_M_AXI_DATA0_1_WVALID));
  top_dpu_intc_M_AXI_HP1_FPD_0 dpu_intc_M_AXI_HP1_FPD
       (.ACLK(CLK_1),
        .ARESETN(RSTn_INTC_1),
        .M00_ACLK(GHP_CLK_I_1),
        .M00_ARESETN(GHP_RSTn_1),
        .M00_AXI_araddr(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARADDR),
        .M00_AXI_arburst(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARBURST),
        .M00_AXI_arcache(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARCACHE),
        .M00_AXI_arid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARID),
        .M00_AXI_arlen(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLEN),
        .M00_AXI_arlock(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLOCK),
        .M00_AXI_arprot(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARPROT),
        .M00_AXI_arqos(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARQOS),
        .M00_AXI_arready(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARREADY),
        .M00_AXI_arsize(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARSIZE),
        .M00_AXI_aruser(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARUSER),
        .M00_AXI_arvalid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARVALID),
        .M00_AXI_awaddr(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWADDR),
        .M00_AXI_awburst(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWBURST),
        .M00_AXI_awcache(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWCACHE),
        .M00_AXI_awid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWID),
        .M00_AXI_awlen(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLEN),
        .M00_AXI_awlock(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLOCK),
        .M00_AXI_awprot(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWPROT),
        .M00_AXI_awqos(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWQOS),
        .M00_AXI_awready(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWREADY),
        .M00_AXI_awsize(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWSIZE),
        .M00_AXI_awuser(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWUSER),
        .M00_AXI_awvalid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWVALID),
        .M00_AXI_bid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_BID),
        .M00_AXI_bready(dpu_intc_M_AXI_HP1_FPD_M00_AXI_BREADY),
        .M00_AXI_bresp(dpu_intc_M_AXI_HP1_FPD_M00_AXI_BRESP),
        .M00_AXI_bvalid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_BVALID),
        .M00_AXI_rdata(dpu_intc_M_AXI_HP1_FPD_M00_AXI_RDATA),
        .M00_AXI_rid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_RID),
        .M00_AXI_rlast(dpu_intc_M_AXI_HP1_FPD_M00_AXI_RLAST),
        .M00_AXI_rready(dpu_intc_M_AXI_HP1_FPD_M00_AXI_RREADY),
        .M00_AXI_rresp(dpu_intc_M_AXI_HP1_FPD_M00_AXI_RRESP),
        .M00_AXI_rvalid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_RVALID),
        .M00_AXI_wdata(dpu_intc_M_AXI_HP1_FPD_M00_AXI_WDATA),
        .M00_AXI_wlast(dpu_intc_M_AXI_HP1_FPD_M00_AXI_WLAST),
        .M00_AXI_wready(dpu_intc_M_AXI_HP1_FPD_M00_AXI_WREADY),
        .M00_AXI_wstrb(dpu_intc_M_AXI_HP1_FPD_M00_AXI_WSTRB),
        .M00_AXI_wvalid(dpu_intc_M_AXI_HP1_FPD_M00_AXI_WVALID),
        .S00_ACLK(CLK_1),
        .S00_ARESETN(RSTn_PERI_1),
        .S00_AXI_araddr(DPU0_M_AXI_DATA1_1_ARADDR),
        .S00_AXI_arburst(DPU0_M_AXI_DATA1_1_ARBURST),
        .S00_AXI_arcache(DPU0_M_AXI_DATA1_1_ARCACHE),
        .S00_AXI_arid(DPU0_M_AXI_DATA1_1_ARID),
        .S00_AXI_arlen(DPU0_M_AXI_DATA1_1_ARLEN),
        .S00_AXI_arlock(DPU0_M_AXI_DATA1_1_ARLOCK),
        .S00_AXI_arprot(DPU0_M_AXI_DATA1_1_ARPROT),
        .S00_AXI_arqos(DPU0_M_AXI_DATA1_1_ARQOS),
        .S00_AXI_arready(DPU0_M_AXI_DATA1_1_ARREADY),
        .S00_AXI_arsize(DPU0_M_AXI_DATA1_1_ARSIZE),
        .S00_AXI_aruser(DPU0_M_AXI_DATA1_1_ARUSER),
        .S00_AXI_arvalid(DPU0_M_AXI_DATA1_1_ARVALID),
        .S00_AXI_awaddr(DPU0_M_AXI_DATA1_1_AWADDR),
        .S00_AXI_awburst(DPU0_M_AXI_DATA1_1_AWBURST),
        .S00_AXI_awcache(DPU0_M_AXI_DATA1_1_AWCACHE),
        .S00_AXI_awid(DPU0_M_AXI_DATA1_1_AWID),
        .S00_AXI_awlen(DPU0_M_AXI_DATA1_1_AWLEN),
        .S00_AXI_awlock(DPU0_M_AXI_DATA1_1_AWLOCK),
        .S00_AXI_awprot(DPU0_M_AXI_DATA1_1_AWPROT),
        .S00_AXI_awqos(DPU0_M_AXI_DATA1_1_AWQOS),
        .S00_AXI_awready(DPU0_M_AXI_DATA1_1_AWREADY),
        .S00_AXI_awsize(DPU0_M_AXI_DATA1_1_AWSIZE),
        .S00_AXI_awuser(DPU0_M_AXI_DATA1_1_AWUSER),
        .S00_AXI_awvalid(DPU0_M_AXI_DATA1_1_AWVALID),
        .S00_AXI_bid(DPU0_M_AXI_DATA1_1_BID),
        .S00_AXI_bready(DPU0_M_AXI_DATA1_1_BREADY),
        .S00_AXI_bresp(DPU0_M_AXI_DATA1_1_BRESP),
        .S00_AXI_bvalid(DPU0_M_AXI_DATA1_1_BVALID),
        .S00_AXI_rdata(DPU0_M_AXI_DATA1_1_RDATA),
        .S00_AXI_rid(DPU0_M_AXI_DATA1_1_RID),
        .S00_AXI_rlast(DPU0_M_AXI_DATA1_1_RLAST),
        .S00_AXI_rready(DPU0_M_AXI_DATA1_1_RREADY),
        .S00_AXI_rresp(DPU0_M_AXI_DATA1_1_RRESP),
        .S00_AXI_rvalid(DPU0_M_AXI_DATA1_1_RVALID),
        .S00_AXI_wdata(DPU0_M_AXI_DATA1_1_WDATA),
        .S00_AXI_wlast(DPU0_M_AXI_DATA1_1_WLAST),
        .S00_AXI_wready(DPU0_M_AXI_DATA1_1_WREADY),
        .S00_AXI_wstrb(DPU0_M_AXI_DATA1_1_WSTRB),
        .S00_AXI_wvalid(DPU0_M_AXI_DATA1_1_WVALID));
  top_dpu_intc_M_AXI_LPD_0 dpu_intc_M_AXI_LPD
       (.ACLK(CLK_1),
        .ARESETN(RSTn_INTC_1),
        .M00_ACLK(GHP_CLK_I_1),
        .M00_ARESETN(GHP_RSTn_1),
        .M00_AXI_araddr(dpu_intc_M_AXI_LPD_M00_AXI_ARADDR),
        .M00_AXI_arburst(dpu_intc_M_AXI_LPD_M00_AXI_ARBURST),
        .M00_AXI_arcache(dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE),
        .M00_AXI_arid(dpu_intc_M_AXI_LPD_M00_AXI_ARID),
        .M00_AXI_arlen(dpu_intc_M_AXI_LPD_M00_AXI_ARLEN),
        .M00_AXI_arlock(dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK),
        .M00_AXI_arprot(dpu_intc_M_AXI_LPD_M00_AXI_ARPROT),
        .M00_AXI_arqos(dpu_intc_M_AXI_LPD_M00_AXI_ARQOS),
        .M00_AXI_arready(dpu_intc_M_AXI_LPD_M00_AXI_ARREADY),
        .M00_AXI_arsize(dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE),
        .M00_AXI_aruser(dpu_intc_M_AXI_LPD_M00_AXI_ARUSER),
        .M00_AXI_arvalid(dpu_intc_M_AXI_LPD_M00_AXI_ARVALID),
        .M00_AXI_awaddr(dpu_intc_M_AXI_LPD_M00_AXI_AWADDR),
        .M00_AXI_awburst(dpu_intc_M_AXI_LPD_M00_AXI_AWBURST),
        .M00_AXI_awcache(dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE),
        .M00_AXI_awid(dpu_intc_M_AXI_LPD_M00_AXI_AWID),
        .M00_AXI_awlen(dpu_intc_M_AXI_LPD_M00_AXI_AWLEN),
        .M00_AXI_awlock(dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK),
        .M00_AXI_awprot(dpu_intc_M_AXI_LPD_M00_AXI_AWPROT),
        .M00_AXI_awqos(dpu_intc_M_AXI_LPD_M00_AXI_AWQOS),
        .M00_AXI_awready(dpu_intc_M_AXI_LPD_M00_AXI_AWREADY),
        .M00_AXI_awsize(dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE),
        .M00_AXI_awuser(dpu_intc_M_AXI_LPD_M00_AXI_AWUSER),
        .M00_AXI_awvalid(dpu_intc_M_AXI_LPD_M00_AXI_AWVALID),
        .M00_AXI_bid(dpu_intc_M_AXI_LPD_M00_AXI_BID),
        .M00_AXI_bready(dpu_intc_M_AXI_LPD_M00_AXI_BREADY),
        .M00_AXI_bresp(dpu_intc_M_AXI_LPD_M00_AXI_BRESP),
        .M00_AXI_bvalid(dpu_intc_M_AXI_LPD_M00_AXI_BVALID),
        .M00_AXI_rdata(dpu_intc_M_AXI_LPD_M00_AXI_RDATA),
        .M00_AXI_rid(dpu_intc_M_AXI_LPD_M00_AXI_RID),
        .M00_AXI_rlast(dpu_intc_M_AXI_LPD_M00_AXI_RLAST),
        .M00_AXI_rready(dpu_intc_M_AXI_LPD_M00_AXI_RREADY),
        .M00_AXI_rresp(dpu_intc_M_AXI_LPD_M00_AXI_RRESP),
        .M00_AXI_rvalid(dpu_intc_M_AXI_LPD_M00_AXI_RVALID),
        .M00_AXI_wdata(dpu_intc_M_AXI_LPD_M00_AXI_WDATA),
        .M00_AXI_wlast(dpu_intc_M_AXI_LPD_M00_AXI_WLAST),
        .M00_AXI_wready(dpu_intc_M_AXI_LPD_M00_AXI_WREADY),
        .M00_AXI_wstrb(dpu_intc_M_AXI_LPD_M00_AXI_WSTRB),
        .M00_AXI_wvalid(dpu_intc_M_AXI_LPD_M00_AXI_WVALID),
        .S00_ACLK(CLK_1),
        .S00_ARESETN(RSTn_PERI_1),
        .S00_AXI_araddr(DPU0_M_AXI_INSTR_1_ARADDR),
        .S00_AXI_arburst(DPU0_M_AXI_INSTR_1_ARBURST),
        .S00_AXI_arcache(DPU0_M_AXI_INSTR_1_ARCACHE),
        .S00_AXI_arid(DPU0_M_AXI_INSTR_1_ARID),
        .S00_AXI_arlen(DPU0_M_AXI_INSTR_1_ARLEN),
        .S00_AXI_arlock(DPU0_M_AXI_INSTR_1_ARLOCK),
        .S00_AXI_arprot(DPU0_M_AXI_INSTR_1_ARPROT),
        .S00_AXI_arqos(DPU0_M_AXI_INSTR_1_ARQOS),
        .S00_AXI_arready(DPU0_M_AXI_INSTR_1_ARREADY),
        .S00_AXI_arsize(DPU0_M_AXI_INSTR_1_ARSIZE),
        .S00_AXI_aruser(DPU0_M_AXI_INSTR_1_ARUSER),
        .S00_AXI_arvalid(DPU0_M_AXI_INSTR_1_ARVALID),
        .S00_AXI_awaddr(DPU0_M_AXI_INSTR_1_AWADDR),
        .S00_AXI_awburst(DPU0_M_AXI_INSTR_1_AWBURST),
        .S00_AXI_awcache(DPU0_M_AXI_INSTR_1_AWCACHE),
        .S00_AXI_awid(DPU0_M_AXI_INSTR_1_AWID),
        .S00_AXI_awlen(DPU0_M_AXI_INSTR_1_AWLEN),
        .S00_AXI_awlock(DPU0_M_AXI_INSTR_1_AWLOCK),
        .S00_AXI_awprot(DPU0_M_AXI_INSTR_1_AWPROT),
        .S00_AXI_awqos(DPU0_M_AXI_INSTR_1_AWQOS),
        .S00_AXI_awready(DPU0_M_AXI_INSTR_1_AWREADY),
        .S00_AXI_awsize(DPU0_M_AXI_INSTR_1_AWSIZE),
        .S00_AXI_awuser(DPU0_M_AXI_INSTR_1_AWUSER),
        .S00_AXI_awvalid(DPU0_M_AXI_INSTR_1_AWVALID),
        .S00_AXI_bid(DPU0_M_AXI_INSTR_1_BID),
        .S00_AXI_bready(DPU0_M_AXI_INSTR_1_BREADY),
        .S00_AXI_bresp(DPU0_M_AXI_INSTR_1_BRESP),
        .S00_AXI_bvalid(DPU0_M_AXI_INSTR_1_BVALID),
        .S00_AXI_rdata(DPU0_M_AXI_INSTR_1_RDATA),
        .S00_AXI_rid(DPU0_M_AXI_INSTR_1_RID),
        .S00_AXI_rlast(DPU0_M_AXI_INSTR_1_RLAST),
        .S00_AXI_rready(DPU0_M_AXI_INSTR_1_RREADY),
        .S00_AXI_rresp(DPU0_M_AXI_INSTR_1_RRESP),
        .S00_AXI_rvalid(DPU0_M_AXI_INSTR_1_RVALID),
        .S00_AXI_wdata(DPU0_M_AXI_INSTR_1_WDATA),
        .S00_AXI_wlast(DPU0_M_AXI_INSTR_1_WLAST),
        .S00_AXI_wready(DPU0_M_AXI_INSTR_1_WREADY),
        .S00_AXI_wstrb(DPU0_M_AXI_INSTR_1_WSTRB),
        .S00_AXI_wvalid(DPU0_M_AXI_INSTR_1_WVALID));
endmodule

module hier_dpu_imp_CAA3KC
   (CLK,
    GHP_CLK_I,
    GHP_CLK_O,
    GHP_RSTn,
    INTR,
    M_AXI_HP0_FPD_araddr,
    M_AXI_HP0_FPD_arburst,
    M_AXI_HP0_FPD_arcache,
    M_AXI_HP0_FPD_arid,
    M_AXI_HP0_FPD_arlen,
    M_AXI_HP0_FPD_arlock,
    M_AXI_HP0_FPD_arprot,
    M_AXI_HP0_FPD_arqos,
    M_AXI_HP0_FPD_arready,
    M_AXI_HP0_FPD_arsize,
    M_AXI_HP0_FPD_aruser,
    M_AXI_HP0_FPD_arvalid,
    M_AXI_HP0_FPD_awaddr,
    M_AXI_HP0_FPD_awburst,
    M_AXI_HP0_FPD_awcache,
    M_AXI_HP0_FPD_awid,
    M_AXI_HP0_FPD_awlen,
    M_AXI_HP0_FPD_awlock,
    M_AXI_HP0_FPD_awprot,
    M_AXI_HP0_FPD_awqos,
    M_AXI_HP0_FPD_awready,
    M_AXI_HP0_FPD_awsize,
    M_AXI_HP0_FPD_awuser,
    M_AXI_HP0_FPD_awvalid,
    M_AXI_HP0_FPD_bid,
    M_AXI_HP0_FPD_bready,
    M_AXI_HP0_FPD_bresp,
    M_AXI_HP0_FPD_bvalid,
    M_AXI_HP0_FPD_rdata,
    M_AXI_HP0_FPD_rid,
    M_AXI_HP0_FPD_rlast,
    M_AXI_HP0_FPD_rready,
    M_AXI_HP0_FPD_rresp,
    M_AXI_HP0_FPD_rvalid,
    M_AXI_HP0_FPD_wdata,
    M_AXI_HP0_FPD_wlast,
    M_AXI_HP0_FPD_wready,
    M_AXI_HP0_FPD_wstrb,
    M_AXI_HP0_FPD_wvalid,
    M_AXI_HP1_FPD_araddr,
    M_AXI_HP1_FPD_arburst,
    M_AXI_HP1_FPD_arcache,
    M_AXI_HP1_FPD_arid,
    M_AXI_HP1_FPD_arlen,
    M_AXI_HP1_FPD_arlock,
    M_AXI_HP1_FPD_arprot,
    M_AXI_HP1_FPD_arqos,
    M_AXI_HP1_FPD_arready,
    M_AXI_HP1_FPD_arsize,
    M_AXI_HP1_FPD_aruser,
    M_AXI_HP1_FPD_arvalid,
    M_AXI_HP1_FPD_awaddr,
    M_AXI_HP1_FPD_awburst,
    M_AXI_HP1_FPD_awcache,
    M_AXI_HP1_FPD_awid,
    M_AXI_HP1_FPD_awlen,
    M_AXI_HP1_FPD_awlock,
    M_AXI_HP1_FPD_awprot,
    M_AXI_HP1_FPD_awqos,
    M_AXI_HP1_FPD_awready,
    M_AXI_HP1_FPD_awsize,
    M_AXI_HP1_FPD_awuser,
    M_AXI_HP1_FPD_awvalid,
    M_AXI_HP1_FPD_bid,
    M_AXI_HP1_FPD_bready,
    M_AXI_HP1_FPD_bresp,
    M_AXI_HP1_FPD_bvalid,
    M_AXI_HP1_FPD_rdata,
    M_AXI_HP1_FPD_rid,
    M_AXI_HP1_FPD_rlast,
    M_AXI_HP1_FPD_rready,
    M_AXI_HP1_FPD_rresp,
    M_AXI_HP1_FPD_rvalid,
    M_AXI_HP1_FPD_wdata,
    M_AXI_HP1_FPD_wlast,
    M_AXI_HP1_FPD_wready,
    M_AXI_HP1_FPD_wstrb,
    M_AXI_HP1_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    RSTn,
    S_AXI_CLK,
    S_AXI_RSTn,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input CLK;
  input GHP_CLK_I;
  output GHP_CLK_O;
  input GHP_RSTn;
  output [0:0]INTR;
  output [39:0]M_AXI_HP0_FPD_araddr;
  output [1:0]M_AXI_HP0_FPD_arburst;
  output [3:0]M_AXI_HP0_FPD_arcache;
  output [1:0]M_AXI_HP0_FPD_arid;
  output [7:0]M_AXI_HP0_FPD_arlen;
  output M_AXI_HP0_FPD_arlock;
  output [2:0]M_AXI_HP0_FPD_arprot;
  output [3:0]M_AXI_HP0_FPD_arqos;
  input M_AXI_HP0_FPD_arready;
  output [2:0]M_AXI_HP0_FPD_arsize;
  output M_AXI_HP0_FPD_aruser;
  output M_AXI_HP0_FPD_arvalid;
  output [39:0]M_AXI_HP0_FPD_awaddr;
  output [1:0]M_AXI_HP0_FPD_awburst;
  output [3:0]M_AXI_HP0_FPD_awcache;
  output [1:0]M_AXI_HP0_FPD_awid;
  output [7:0]M_AXI_HP0_FPD_awlen;
  output M_AXI_HP0_FPD_awlock;
  output [2:0]M_AXI_HP0_FPD_awprot;
  output [3:0]M_AXI_HP0_FPD_awqos;
  input M_AXI_HP0_FPD_awready;
  output [2:0]M_AXI_HP0_FPD_awsize;
  output M_AXI_HP0_FPD_awuser;
  output M_AXI_HP0_FPD_awvalid;
  input [5:0]M_AXI_HP0_FPD_bid;
  output M_AXI_HP0_FPD_bready;
  input [1:0]M_AXI_HP0_FPD_bresp;
  input M_AXI_HP0_FPD_bvalid;
  input [127:0]M_AXI_HP0_FPD_rdata;
  input [5:0]M_AXI_HP0_FPD_rid;
  input M_AXI_HP0_FPD_rlast;
  output M_AXI_HP0_FPD_rready;
  input [1:0]M_AXI_HP0_FPD_rresp;
  input M_AXI_HP0_FPD_rvalid;
  output [127:0]M_AXI_HP0_FPD_wdata;
  output M_AXI_HP0_FPD_wlast;
  input M_AXI_HP0_FPD_wready;
  output [15:0]M_AXI_HP0_FPD_wstrb;
  output M_AXI_HP0_FPD_wvalid;
  output [39:0]M_AXI_HP1_FPD_araddr;
  output [1:0]M_AXI_HP1_FPD_arburst;
  output [3:0]M_AXI_HP1_FPD_arcache;
  output [1:0]M_AXI_HP1_FPD_arid;
  output [7:0]M_AXI_HP1_FPD_arlen;
  output M_AXI_HP1_FPD_arlock;
  output [2:0]M_AXI_HP1_FPD_arprot;
  output [3:0]M_AXI_HP1_FPD_arqos;
  input M_AXI_HP1_FPD_arready;
  output [2:0]M_AXI_HP1_FPD_arsize;
  output M_AXI_HP1_FPD_aruser;
  output M_AXI_HP1_FPD_arvalid;
  output [39:0]M_AXI_HP1_FPD_awaddr;
  output [1:0]M_AXI_HP1_FPD_awburst;
  output [3:0]M_AXI_HP1_FPD_awcache;
  output [1:0]M_AXI_HP1_FPD_awid;
  output [7:0]M_AXI_HP1_FPD_awlen;
  output M_AXI_HP1_FPD_awlock;
  output [2:0]M_AXI_HP1_FPD_awprot;
  output [3:0]M_AXI_HP1_FPD_awqos;
  input M_AXI_HP1_FPD_awready;
  output [2:0]M_AXI_HP1_FPD_awsize;
  output M_AXI_HP1_FPD_awuser;
  output M_AXI_HP1_FPD_awvalid;
  input [5:0]M_AXI_HP1_FPD_bid;
  output M_AXI_HP1_FPD_bready;
  input [1:0]M_AXI_HP1_FPD_bresp;
  input M_AXI_HP1_FPD_bvalid;
  input [127:0]M_AXI_HP1_FPD_rdata;
  input [5:0]M_AXI_HP1_FPD_rid;
  input M_AXI_HP1_FPD_rlast;
  output M_AXI_HP1_FPD_rready;
  input [1:0]M_AXI_HP1_FPD_rresp;
  input M_AXI_HP1_FPD_rvalid;
  output [127:0]M_AXI_HP1_FPD_wdata;
  output M_AXI_HP1_FPD_wlast;
  input M_AXI_HP1_FPD_wready;
  output [15:0]M_AXI_HP1_FPD_wstrb;
  output M_AXI_HP1_FPD_wvalid;
  output [39:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [1:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [39:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [1:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [5:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [31:0]M_AXI_LPD_rdata;
  input [5:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [31:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [3:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  input RSTn;
  input S_AXI_CLK;
  input S_AXI_RSTn;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire CLK_1;
  wire [39:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [1:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARUSER;
  wire Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [1:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWUSER;
  wire Conn1_AWVALID;
  wire [5:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [127:0]Conn1_RDATA;
  wire [5:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [127:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [15:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [39:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [1:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARUSER;
  wire Conn2_ARVALID;
  wire [39:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [1:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWUSER;
  wire Conn2_AWVALID;
  wire [5:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [127:0]Conn2_RDATA;
  wire [5:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [127:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [15:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [39:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [1:0]Conn3_ARID;
  wire [7:0]Conn3_ARLEN;
  wire Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire [3:0]Conn3_ARQOS;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARUSER;
  wire Conn3_ARVALID;
  wire [39:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [1:0]Conn3_AWID;
  wire [7:0]Conn3_AWLEN;
  wire Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire [3:0]Conn3_AWQOS;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWUSER;
  wire Conn3_AWVALID;
  wire [5:0]Conn3_BID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire [5:0]Conn3_RID;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_BID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY;
  wire [15:0]DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_BID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY;
  wire [15:0]DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_BID;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID;
  wire [31:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RID;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID;
  wire [31:0]DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID;
  wire DPUCZDX8G_dpu0_interrupt;
  wire DPUCZDX8G_dpu_2x_clk_ce;
  wire GHP_CLK_I_1;
  wire GHP_RSTn_1;
  wire RSTn_1;
  wire [39:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [15:0]S_AXI_1_ARID;
  wire [7:0]S_AXI_1_ARLEN;
  wire S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [3:0]S_AXI_1_ARQOS;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire [15:0]S_AXI_1_ARUSER;
  wire S_AXI_1_ARVALID;
  wire [39:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [15:0]S_AXI_1_AWID;
  wire [7:0]S_AXI_1_AWLEN;
  wire S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [3:0]S_AXI_1_AWQOS;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire [15:0]S_AXI_1_AWUSER;
  wire S_AXI_1_AWVALID;
  wire [15:0]S_AXI_1_BID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [15:0]S_AXI_1_RID;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire S_AXI_CLK_1;
  wire S_AXI_RSTn_1;
  wire hier_dpu_clk_DPU_CLK;
  wire hier_dpu_clk_DSP_CLK;
  wire [0:0]hier_dpu_clk_RSTn_DSP;
  wire [0:0]hier_dpu_clk_RSTn_INTC;
  wire [0:0]hier_dpu_clk_RSTn_PERI;
  wire hier_dpu_ghp_GHP_CLK_O;
  wire [0:0]hier_dpu_irq_INTR;

  assign CLK_1 = CLK;
  assign Conn1_ARREADY = M_AXI_HP0_FPD_arready;
  assign Conn1_AWREADY = M_AXI_HP0_FPD_awready;
  assign Conn1_BID = M_AXI_HP0_FPD_bid[5:0];
  assign Conn1_BRESP = M_AXI_HP0_FPD_bresp[1:0];
  assign Conn1_BVALID = M_AXI_HP0_FPD_bvalid;
  assign Conn1_RDATA = M_AXI_HP0_FPD_rdata[127:0];
  assign Conn1_RID = M_AXI_HP0_FPD_rid[5:0];
  assign Conn1_RLAST = M_AXI_HP0_FPD_rlast;
  assign Conn1_RRESP = M_AXI_HP0_FPD_rresp[1:0];
  assign Conn1_RVALID = M_AXI_HP0_FPD_rvalid;
  assign Conn1_WREADY = M_AXI_HP0_FPD_wready;
  assign Conn2_ARREADY = M_AXI_HP1_FPD_arready;
  assign Conn2_AWREADY = M_AXI_HP1_FPD_awready;
  assign Conn2_BID = M_AXI_HP1_FPD_bid[5:0];
  assign Conn2_BRESP = M_AXI_HP1_FPD_bresp[1:0];
  assign Conn2_BVALID = M_AXI_HP1_FPD_bvalid;
  assign Conn2_RDATA = M_AXI_HP1_FPD_rdata[127:0];
  assign Conn2_RID = M_AXI_HP1_FPD_rid[5:0];
  assign Conn2_RLAST = M_AXI_HP1_FPD_rlast;
  assign Conn2_RRESP = M_AXI_HP1_FPD_rresp[1:0];
  assign Conn2_RVALID = M_AXI_HP1_FPD_rvalid;
  assign Conn2_WREADY = M_AXI_HP1_FPD_wready;
  assign Conn3_ARREADY = M_AXI_LPD_arready;
  assign Conn3_AWREADY = M_AXI_LPD_awready;
  assign Conn3_BID = M_AXI_LPD_bid[5:0];
  assign Conn3_BRESP = M_AXI_LPD_bresp[1:0];
  assign Conn3_BVALID = M_AXI_LPD_bvalid;
  assign Conn3_RDATA = M_AXI_LPD_rdata[31:0];
  assign Conn3_RID = M_AXI_LPD_rid[5:0];
  assign Conn3_RLAST = M_AXI_LPD_rlast;
  assign Conn3_RRESP = M_AXI_LPD_rresp[1:0];
  assign Conn3_RVALID = M_AXI_LPD_rvalid;
  assign Conn3_WREADY = M_AXI_LPD_wready;
  assign GHP_CLK_I_1 = GHP_CLK_I;
  assign GHP_CLK_O = hier_dpu_ghp_GHP_CLK_O;
  assign GHP_RSTn_1 = GHP_RSTn;
  assign INTR[0] = hier_dpu_irq_INTR;
  assign M_AXI_HP0_FPD_araddr[39:0] = Conn1_ARADDR;
  assign M_AXI_HP0_FPD_arburst[1:0] = Conn1_ARBURST;
  assign M_AXI_HP0_FPD_arcache[3:0] = Conn1_ARCACHE;
  assign M_AXI_HP0_FPD_arid[1:0] = Conn1_ARID;
  assign M_AXI_HP0_FPD_arlen[7:0] = Conn1_ARLEN;
  assign M_AXI_HP0_FPD_arlock = Conn1_ARLOCK;
  assign M_AXI_HP0_FPD_arprot[2:0] = Conn1_ARPROT;
  assign M_AXI_HP0_FPD_arqos[3:0] = Conn1_ARQOS;
  assign M_AXI_HP0_FPD_arsize[2:0] = Conn1_ARSIZE;
  assign M_AXI_HP0_FPD_aruser = Conn1_ARUSER;
  assign M_AXI_HP0_FPD_arvalid = Conn1_ARVALID;
  assign M_AXI_HP0_FPD_awaddr[39:0] = Conn1_AWADDR;
  assign M_AXI_HP0_FPD_awburst[1:0] = Conn1_AWBURST;
  assign M_AXI_HP0_FPD_awcache[3:0] = Conn1_AWCACHE;
  assign M_AXI_HP0_FPD_awid[1:0] = Conn1_AWID;
  assign M_AXI_HP0_FPD_awlen[7:0] = Conn1_AWLEN;
  assign M_AXI_HP0_FPD_awlock = Conn1_AWLOCK;
  assign M_AXI_HP0_FPD_awprot[2:0] = Conn1_AWPROT;
  assign M_AXI_HP0_FPD_awqos[3:0] = Conn1_AWQOS;
  assign M_AXI_HP0_FPD_awsize[2:0] = Conn1_AWSIZE;
  assign M_AXI_HP0_FPD_awuser = Conn1_AWUSER;
  assign M_AXI_HP0_FPD_awvalid = Conn1_AWVALID;
  assign M_AXI_HP0_FPD_bready = Conn1_BREADY;
  assign M_AXI_HP0_FPD_rready = Conn1_RREADY;
  assign M_AXI_HP0_FPD_wdata[127:0] = Conn1_WDATA;
  assign M_AXI_HP0_FPD_wlast = Conn1_WLAST;
  assign M_AXI_HP0_FPD_wstrb[15:0] = Conn1_WSTRB;
  assign M_AXI_HP0_FPD_wvalid = Conn1_WVALID;
  assign M_AXI_HP1_FPD_araddr[39:0] = Conn2_ARADDR;
  assign M_AXI_HP1_FPD_arburst[1:0] = Conn2_ARBURST;
  assign M_AXI_HP1_FPD_arcache[3:0] = Conn2_ARCACHE;
  assign M_AXI_HP1_FPD_arid[1:0] = Conn2_ARID;
  assign M_AXI_HP1_FPD_arlen[7:0] = Conn2_ARLEN;
  assign M_AXI_HP1_FPD_arlock = Conn2_ARLOCK;
  assign M_AXI_HP1_FPD_arprot[2:0] = Conn2_ARPROT;
  assign M_AXI_HP1_FPD_arqos[3:0] = Conn2_ARQOS;
  assign M_AXI_HP1_FPD_arsize[2:0] = Conn2_ARSIZE;
  assign M_AXI_HP1_FPD_aruser = Conn2_ARUSER;
  assign M_AXI_HP1_FPD_arvalid = Conn2_ARVALID;
  assign M_AXI_HP1_FPD_awaddr[39:0] = Conn2_AWADDR;
  assign M_AXI_HP1_FPD_awburst[1:0] = Conn2_AWBURST;
  assign M_AXI_HP1_FPD_awcache[3:0] = Conn2_AWCACHE;
  assign M_AXI_HP1_FPD_awid[1:0] = Conn2_AWID;
  assign M_AXI_HP1_FPD_awlen[7:0] = Conn2_AWLEN;
  assign M_AXI_HP1_FPD_awlock = Conn2_AWLOCK;
  assign M_AXI_HP1_FPD_awprot[2:0] = Conn2_AWPROT;
  assign M_AXI_HP1_FPD_awqos[3:0] = Conn2_AWQOS;
  assign M_AXI_HP1_FPD_awsize[2:0] = Conn2_AWSIZE;
  assign M_AXI_HP1_FPD_awuser = Conn2_AWUSER;
  assign M_AXI_HP1_FPD_awvalid = Conn2_AWVALID;
  assign M_AXI_HP1_FPD_bready = Conn2_BREADY;
  assign M_AXI_HP1_FPD_rready = Conn2_RREADY;
  assign M_AXI_HP1_FPD_wdata[127:0] = Conn2_WDATA;
  assign M_AXI_HP1_FPD_wlast = Conn2_WLAST;
  assign M_AXI_HP1_FPD_wstrb[15:0] = Conn2_WSTRB;
  assign M_AXI_HP1_FPD_wvalid = Conn2_WVALID;
  assign M_AXI_LPD_araddr[39:0] = Conn3_ARADDR;
  assign M_AXI_LPD_arburst[1:0] = Conn3_ARBURST;
  assign M_AXI_LPD_arcache[3:0] = Conn3_ARCACHE;
  assign M_AXI_LPD_arid[1:0] = Conn3_ARID;
  assign M_AXI_LPD_arlen[7:0] = Conn3_ARLEN;
  assign M_AXI_LPD_arlock = Conn3_ARLOCK;
  assign M_AXI_LPD_arprot[2:0] = Conn3_ARPROT;
  assign M_AXI_LPD_arqos[3:0] = Conn3_ARQOS;
  assign M_AXI_LPD_arsize[2:0] = Conn3_ARSIZE;
  assign M_AXI_LPD_aruser = Conn3_ARUSER;
  assign M_AXI_LPD_arvalid = Conn3_ARVALID;
  assign M_AXI_LPD_awaddr[39:0] = Conn3_AWADDR;
  assign M_AXI_LPD_awburst[1:0] = Conn3_AWBURST;
  assign M_AXI_LPD_awcache[3:0] = Conn3_AWCACHE;
  assign M_AXI_LPD_awid[1:0] = Conn3_AWID;
  assign M_AXI_LPD_awlen[7:0] = Conn3_AWLEN;
  assign M_AXI_LPD_awlock = Conn3_AWLOCK;
  assign M_AXI_LPD_awprot[2:0] = Conn3_AWPROT;
  assign M_AXI_LPD_awqos[3:0] = Conn3_AWQOS;
  assign M_AXI_LPD_awsize[2:0] = Conn3_AWSIZE;
  assign M_AXI_LPD_awuser = Conn3_AWUSER;
  assign M_AXI_LPD_awvalid = Conn3_AWVALID;
  assign M_AXI_LPD_bready = Conn3_BREADY;
  assign M_AXI_LPD_rready = Conn3_RREADY;
  assign M_AXI_LPD_wdata[31:0] = Conn3_WDATA;
  assign M_AXI_LPD_wlast = Conn3_WLAST;
  assign M_AXI_LPD_wstrb[3:0] = Conn3_WSTRB;
  assign M_AXI_LPD_wvalid = Conn3_WVALID;
  assign RSTn_1 = RSTn;
  assign S_AXI_1_ARADDR = S_AXI_araddr[39:0];
  assign S_AXI_1_ARBURST = S_AXI_arburst[1:0];
  assign S_AXI_1_ARCACHE = S_AXI_arcache[3:0];
  assign S_AXI_1_ARID = S_AXI_arid[15:0];
  assign S_AXI_1_ARLEN = S_AXI_arlen[7:0];
  assign S_AXI_1_ARLOCK = S_AXI_arlock;
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_1_ARSIZE = S_AXI_arsize[2:0];
  assign S_AXI_1_ARUSER = S_AXI_aruser[15:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[39:0];
  assign S_AXI_1_AWBURST = S_AXI_awburst[1:0];
  assign S_AXI_1_AWCACHE = S_AXI_awcache[3:0];
  assign S_AXI_1_AWID = S_AXI_awid[15:0];
  assign S_AXI_1_AWLEN = S_AXI_awlen[7:0];
  assign S_AXI_1_AWLOCK = S_AXI_awlock;
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_1_AWSIZE = S_AXI_awsize[2:0];
  assign S_AXI_1_AWUSER = S_AXI_awuser[15:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WLAST = S_AXI_wlast;
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_CLK_1 = S_AXI_CLK;
  assign S_AXI_RSTn_1 = S_AXI_RSTn;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bid[15:0] = S_AXI_1_BID;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rid[15:0] = S_AXI_1_RID;
  assign S_AXI_rlast = S_AXI_1_RLAST;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  top_DPUCZDX8G_0 DPUCZDX8G
       (.dpu0_interrupt(DPUCZDX8G_dpu0_interrupt),
        .dpu0_m_axi_data0_araddr(DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR),
        .dpu0_m_axi_data0_arburst(DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST),
        .dpu0_m_axi_data0_arcache(DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE),
        .dpu0_m_axi_data0_arid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARID),
        .dpu0_m_axi_data0_arlen(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN),
        .dpu0_m_axi_data0_arlock(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK),
        .dpu0_m_axi_data0_arprot(DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT),
        .dpu0_m_axi_data0_arqos(DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS),
        .dpu0_m_axi_data0_arready(DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY),
        .dpu0_m_axi_data0_arsize(DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE),
        .dpu0_m_axi_data0_aruser(DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER),
        .dpu0_m_axi_data0_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID),
        .dpu0_m_axi_data0_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR),
        .dpu0_m_axi_data0_awburst(DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST),
        .dpu0_m_axi_data0_awcache(DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE),
        .dpu0_m_axi_data0_awid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWID),
        .dpu0_m_axi_data0_awlen(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN),
        .dpu0_m_axi_data0_awlock(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK),
        .dpu0_m_axi_data0_awprot(DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT),
        .dpu0_m_axi_data0_awqos(DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS),
        .dpu0_m_axi_data0_awready(DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY),
        .dpu0_m_axi_data0_awsize(DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE),
        .dpu0_m_axi_data0_awuser(DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER),
        .dpu0_m_axi_data0_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID),
        .dpu0_m_axi_data0_bid({1'b0,1'b0,1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_DATA0_BID}),
        .dpu0_m_axi_data0_bready(DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY),
        .dpu0_m_axi_data0_bresp(DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP),
        .dpu0_m_axi_data0_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID),
        .dpu0_m_axi_data0_rdata(DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA),
        .dpu0_m_axi_data0_rid({1'b0,1'b0,1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_DATA0_RID}),
        .dpu0_m_axi_data0_rlast(DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST),
        .dpu0_m_axi_data0_rready(DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY),
        .dpu0_m_axi_data0_rresp(DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP),
        .dpu0_m_axi_data0_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID),
        .dpu0_m_axi_data0_wdata(DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA),
        .dpu0_m_axi_data0_wlast(DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST),
        .dpu0_m_axi_data0_wready(DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY),
        .dpu0_m_axi_data0_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB),
        .dpu0_m_axi_data0_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID),
        .dpu0_m_axi_data1_araddr(DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR),
        .dpu0_m_axi_data1_arburst(DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST),
        .dpu0_m_axi_data1_arcache(DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE),
        .dpu0_m_axi_data1_arid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARID),
        .dpu0_m_axi_data1_arlen(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN),
        .dpu0_m_axi_data1_arlock(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK),
        .dpu0_m_axi_data1_arprot(DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT),
        .dpu0_m_axi_data1_arqos(DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS),
        .dpu0_m_axi_data1_arready(DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY),
        .dpu0_m_axi_data1_arsize(DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE),
        .dpu0_m_axi_data1_aruser(DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER),
        .dpu0_m_axi_data1_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID),
        .dpu0_m_axi_data1_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR),
        .dpu0_m_axi_data1_awburst(DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST),
        .dpu0_m_axi_data1_awcache(DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE),
        .dpu0_m_axi_data1_awid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWID),
        .dpu0_m_axi_data1_awlen(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN),
        .dpu0_m_axi_data1_awlock(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK),
        .dpu0_m_axi_data1_awprot(DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT),
        .dpu0_m_axi_data1_awqos(DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS),
        .dpu0_m_axi_data1_awready(DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY),
        .dpu0_m_axi_data1_awsize(DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE),
        .dpu0_m_axi_data1_awuser(DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER),
        .dpu0_m_axi_data1_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID),
        .dpu0_m_axi_data1_bid({1'b0,1'b0,1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_DATA1_BID}),
        .dpu0_m_axi_data1_bready(DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY),
        .dpu0_m_axi_data1_bresp(DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP),
        .dpu0_m_axi_data1_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID),
        .dpu0_m_axi_data1_rdata(DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA),
        .dpu0_m_axi_data1_rid({1'b0,1'b0,1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_DATA1_RID}),
        .dpu0_m_axi_data1_rlast(DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST),
        .dpu0_m_axi_data1_rready(DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY),
        .dpu0_m_axi_data1_rresp(DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP),
        .dpu0_m_axi_data1_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID),
        .dpu0_m_axi_data1_wdata(DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA),
        .dpu0_m_axi_data1_wlast(DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST),
        .dpu0_m_axi_data1_wready(DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY),
        .dpu0_m_axi_data1_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB),
        .dpu0_m_axi_data1_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID),
        .dpu0_m_axi_instr_araddr(DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR),
        .dpu0_m_axi_instr_arburst(DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST),
        .dpu0_m_axi_instr_arcache(DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE),
        .dpu0_m_axi_instr_arid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARID),
        .dpu0_m_axi_instr_arlen(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN),
        .dpu0_m_axi_instr_arlock(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK),
        .dpu0_m_axi_instr_arprot(DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT),
        .dpu0_m_axi_instr_arqos(DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS),
        .dpu0_m_axi_instr_arready(DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY),
        .dpu0_m_axi_instr_arsize(DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE),
        .dpu0_m_axi_instr_aruser(DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER),
        .dpu0_m_axi_instr_arvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID),
        .dpu0_m_axi_instr_awaddr(DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR),
        .dpu0_m_axi_instr_awburst(DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST),
        .dpu0_m_axi_instr_awcache(DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE),
        .dpu0_m_axi_instr_awid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWID),
        .dpu0_m_axi_instr_awlen(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN),
        .dpu0_m_axi_instr_awlock(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK),
        .dpu0_m_axi_instr_awprot(DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT),
        .dpu0_m_axi_instr_awqos(DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS),
        .dpu0_m_axi_instr_awready(DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY),
        .dpu0_m_axi_instr_awsize(DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE),
        .dpu0_m_axi_instr_awuser(DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER),
        .dpu0_m_axi_instr_awvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID),
        .dpu0_m_axi_instr_bid({1'b0,1'b0,1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_INSTR_BID}),
        .dpu0_m_axi_instr_bready(DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY),
        .dpu0_m_axi_instr_bresp(DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP),
        .dpu0_m_axi_instr_bvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID),
        .dpu0_m_axi_instr_rdata(DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA),
        .dpu0_m_axi_instr_rid({1'b0,1'b0,1'b0,1'b0,DPUCZDX8G_DPU0_M_AXI_INSTR_RID}),
        .dpu0_m_axi_instr_rlast(DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST),
        .dpu0_m_axi_instr_rready(DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY),
        .dpu0_m_axi_instr_rresp(DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP),
        .dpu0_m_axi_instr_rvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID),
        .dpu0_m_axi_instr_wdata(DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA),
        .dpu0_m_axi_instr_wlast(DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST),
        .dpu0_m_axi_instr_wready(DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY),
        .dpu0_m_axi_instr_wstrb(DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB),
        .dpu0_m_axi_instr_wvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID),
        .dpu_2x_clk(hier_dpu_clk_DSP_CLK),
        .dpu_2x_clk_ce(DPUCZDX8G_dpu_2x_clk_ce),
        .dpu_2x_resetn(hier_dpu_clk_RSTn_DSP),
        .m_axi_dpu_aclk(hier_dpu_clk_DPU_CLK),
        .m_axi_dpu_aresetn(hier_dpu_clk_RSTn_PERI),
        .s_axi_aclk(S_AXI_CLK_1),
        .s_axi_araddr(S_AXI_1_ARADDR[31:0]),
        .s_axi_arburst(S_AXI_1_ARBURST),
        .s_axi_arcache(S_AXI_1_ARCACHE),
        .s_axi_aresetn(S_AXI_RSTn_1),
        .s_axi_arid(S_AXI_1_ARID),
        .s_axi_arlen(S_AXI_1_ARLEN),
        .s_axi_arlock({S_AXI_1_ARLOCK,S_AXI_1_ARLOCK}),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arqos(S_AXI_1_ARQOS),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_1_ARSIZE),
        .s_axi_aruser(S_AXI_1_ARUSER),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR[31:0]),
        .s_axi_awburst(S_AXI_1_AWBURST),
        .s_axi_awcache(S_AXI_1_AWCACHE),
        .s_axi_awid(S_AXI_1_AWID),
        .s_axi_awlen(S_AXI_1_AWLEN),
        .s_axi_awlock({S_AXI_1_AWLOCK,S_AXI_1_AWLOCK}),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awqos(S_AXI_1_AWQOS),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_1_AWSIZE),
        .s_axi_awuser(S_AXI_1_AWUSER),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bid(S_AXI_1_BID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rid(S_AXI_1_RID),
        .s_axi_rlast(S_AXI_1_RLAST),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(S_AXI_1_WLAST),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  hier_dpu_clk_imp_P5CT15 hier_dpu_clk
       (.CLK(CLK_1),
        .DPU_CLK(hier_dpu_clk_DPU_CLK),
        .DSP_CLK(hier_dpu_clk_DSP_CLK),
        .RSTn(RSTn_1),
        .RSTn_DSP(hier_dpu_clk_RSTn_DSP),
        .RSTn_INTC(hier_dpu_clk_RSTn_INTC),
        .RSTn_PERI(hier_dpu_clk_RSTn_PERI),
        .clk_dsp_ce(DPUCZDX8G_dpu_2x_clk_ce));
  hier_dpu_ghp_imp_1DUMQPD hier_dpu_ghp
       (.CLK(hier_dpu_clk_DPU_CLK),
        .DPU0_M_AXI_DATA0_araddr(DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR),
        .DPU0_M_AXI_DATA0_arburst(DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST),
        .DPU0_M_AXI_DATA0_arcache(DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE),
        .DPU0_M_AXI_DATA0_arid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARID),
        .DPU0_M_AXI_DATA0_arlen(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN),
        .DPU0_M_AXI_DATA0_arlock(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK),
        .DPU0_M_AXI_DATA0_arprot(DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT),
        .DPU0_M_AXI_DATA0_arqos(DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS),
        .DPU0_M_AXI_DATA0_arready(DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY),
        .DPU0_M_AXI_DATA0_arsize(DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE),
        .DPU0_M_AXI_DATA0_aruser(DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER),
        .DPU0_M_AXI_DATA0_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID),
        .DPU0_M_AXI_DATA0_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR),
        .DPU0_M_AXI_DATA0_awburst(DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST),
        .DPU0_M_AXI_DATA0_awcache(DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE),
        .DPU0_M_AXI_DATA0_awid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWID),
        .DPU0_M_AXI_DATA0_awlen(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN),
        .DPU0_M_AXI_DATA0_awlock(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK),
        .DPU0_M_AXI_DATA0_awprot(DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT),
        .DPU0_M_AXI_DATA0_awqos(DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS),
        .DPU0_M_AXI_DATA0_awready(DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY),
        .DPU0_M_AXI_DATA0_awsize(DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE),
        .DPU0_M_AXI_DATA0_awuser(DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER),
        .DPU0_M_AXI_DATA0_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID),
        .DPU0_M_AXI_DATA0_bid(DPUCZDX8G_DPU0_M_AXI_DATA0_BID),
        .DPU0_M_AXI_DATA0_bready(DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY),
        .DPU0_M_AXI_DATA0_bresp(DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP),
        .DPU0_M_AXI_DATA0_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID),
        .DPU0_M_AXI_DATA0_rdata(DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA),
        .DPU0_M_AXI_DATA0_rid(DPUCZDX8G_DPU0_M_AXI_DATA0_RID),
        .DPU0_M_AXI_DATA0_rlast(DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST),
        .DPU0_M_AXI_DATA0_rready(DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY),
        .DPU0_M_AXI_DATA0_rresp(DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP),
        .DPU0_M_AXI_DATA0_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID),
        .DPU0_M_AXI_DATA0_wdata(DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA),
        .DPU0_M_AXI_DATA0_wlast(DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST),
        .DPU0_M_AXI_DATA0_wready(DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY),
        .DPU0_M_AXI_DATA0_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB),
        .DPU0_M_AXI_DATA0_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID),
        .DPU0_M_AXI_DATA1_araddr(DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR),
        .DPU0_M_AXI_DATA1_arburst(DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST),
        .DPU0_M_AXI_DATA1_arcache(DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE),
        .DPU0_M_AXI_DATA1_arid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARID),
        .DPU0_M_AXI_DATA1_arlen(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN),
        .DPU0_M_AXI_DATA1_arlock(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK),
        .DPU0_M_AXI_DATA1_arprot(DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT),
        .DPU0_M_AXI_DATA1_arqos(DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS),
        .DPU0_M_AXI_DATA1_arready(DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY),
        .DPU0_M_AXI_DATA1_arsize(DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE),
        .DPU0_M_AXI_DATA1_aruser(DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER),
        .DPU0_M_AXI_DATA1_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID),
        .DPU0_M_AXI_DATA1_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR),
        .DPU0_M_AXI_DATA1_awburst(DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST),
        .DPU0_M_AXI_DATA1_awcache(DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE),
        .DPU0_M_AXI_DATA1_awid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWID),
        .DPU0_M_AXI_DATA1_awlen(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN),
        .DPU0_M_AXI_DATA1_awlock(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK),
        .DPU0_M_AXI_DATA1_awprot(DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT),
        .DPU0_M_AXI_DATA1_awqos(DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS),
        .DPU0_M_AXI_DATA1_awready(DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY),
        .DPU0_M_AXI_DATA1_awsize(DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE),
        .DPU0_M_AXI_DATA1_awuser(DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER),
        .DPU0_M_AXI_DATA1_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID),
        .DPU0_M_AXI_DATA1_bid(DPUCZDX8G_DPU0_M_AXI_DATA1_BID),
        .DPU0_M_AXI_DATA1_bready(DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY),
        .DPU0_M_AXI_DATA1_bresp(DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP),
        .DPU0_M_AXI_DATA1_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID),
        .DPU0_M_AXI_DATA1_rdata(DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA),
        .DPU0_M_AXI_DATA1_rid(DPUCZDX8G_DPU0_M_AXI_DATA1_RID),
        .DPU0_M_AXI_DATA1_rlast(DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST),
        .DPU0_M_AXI_DATA1_rready(DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY),
        .DPU0_M_AXI_DATA1_rresp(DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP),
        .DPU0_M_AXI_DATA1_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID),
        .DPU0_M_AXI_DATA1_wdata(DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA),
        .DPU0_M_AXI_DATA1_wlast(DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST),
        .DPU0_M_AXI_DATA1_wready(DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY),
        .DPU0_M_AXI_DATA1_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB),
        .DPU0_M_AXI_DATA1_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID),
        .DPU0_M_AXI_INSTR_araddr(DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR),
        .DPU0_M_AXI_INSTR_arburst(DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST),
        .DPU0_M_AXI_INSTR_arcache(DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE),
        .DPU0_M_AXI_INSTR_arid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARID),
        .DPU0_M_AXI_INSTR_arlen(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN),
        .DPU0_M_AXI_INSTR_arlock(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK),
        .DPU0_M_AXI_INSTR_arprot(DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT),
        .DPU0_M_AXI_INSTR_arqos(DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS),
        .DPU0_M_AXI_INSTR_arready(DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY),
        .DPU0_M_AXI_INSTR_arsize(DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE),
        .DPU0_M_AXI_INSTR_aruser(DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER),
        .DPU0_M_AXI_INSTR_arvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID),
        .DPU0_M_AXI_INSTR_awaddr(DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR),
        .DPU0_M_AXI_INSTR_awburst(DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST),
        .DPU0_M_AXI_INSTR_awcache(DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE),
        .DPU0_M_AXI_INSTR_awid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWID),
        .DPU0_M_AXI_INSTR_awlen(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN),
        .DPU0_M_AXI_INSTR_awlock(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK),
        .DPU0_M_AXI_INSTR_awprot(DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT),
        .DPU0_M_AXI_INSTR_awqos(DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS),
        .DPU0_M_AXI_INSTR_awready(DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY),
        .DPU0_M_AXI_INSTR_awsize(DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE),
        .DPU0_M_AXI_INSTR_awuser(DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER),
        .DPU0_M_AXI_INSTR_awvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID),
        .DPU0_M_AXI_INSTR_bid(DPUCZDX8G_DPU0_M_AXI_INSTR_BID),
        .DPU0_M_AXI_INSTR_bready(DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY),
        .DPU0_M_AXI_INSTR_bresp(DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP),
        .DPU0_M_AXI_INSTR_bvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID),
        .DPU0_M_AXI_INSTR_rdata(DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA),
        .DPU0_M_AXI_INSTR_rid(DPUCZDX8G_DPU0_M_AXI_INSTR_RID),
        .DPU0_M_AXI_INSTR_rlast(DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST),
        .DPU0_M_AXI_INSTR_rready(DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY),
        .DPU0_M_AXI_INSTR_rresp(DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP),
        .DPU0_M_AXI_INSTR_rvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID),
        .DPU0_M_AXI_INSTR_wdata(DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA),
        .DPU0_M_AXI_INSTR_wlast(DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST),
        .DPU0_M_AXI_INSTR_wready(DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY),
        .DPU0_M_AXI_INSTR_wstrb(DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB),
        .DPU0_M_AXI_INSTR_wvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID),
        .GHP_CLK_I(GHP_CLK_I_1),
        .GHP_CLK_O(hier_dpu_ghp_GHP_CLK_O),
        .GHP_RSTn(GHP_RSTn_1),
        .M_AXI_HP0_FPD_araddr(Conn1_ARADDR),
        .M_AXI_HP0_FPD_arburst(Conn1_ARBURST),
        .M_AXI_HP0_FPD_arcache(Conn1_ARCACHE),
        .M_AXI_HP0_FPD_arid(Conn1_ARID),
        .M_AXI_HP0_FPD_arlen(Conn1_ARLEN),
        .M_AXI_HP0_FPD_arlock(Conn1_ARLOCK),
        .M_AXI_HP0_FPD_arprot(Conn1_ARPROT),
        .M_AXI_HP0_FPD_arqos(Conn1_ARQOS),
        .M_AXI_HP0_FPD_arready(Conn1_ARREADY),
        .M_AXI_HP0_FPD_arsize(Conn1_ARSIZE),
        .M_AXI_HP0_FPD_aruser(Conn1_ARUSER),
        .M_AXI_HP0_FPD_arvalid(Conn1_ARVALID),
        .M_AXI_HP0_FPD_awaddr(Conn1_AWADDR),
        .M_AXI_HP0_FPD_awburst(Conn1_AWBURST),
        .M_AXI_HP0_FPD_awcache(Conn1_AWCACHE),
        .M_AXI_HP0_FPD_awid(Conn1_AWID),
        .M_AXI_HP0_FPD_awlen(Conn1_AWLEN),
        .M_AXI_HP0_FPD_awlock(Conn1_AWLOCK),
        .M_AXI_HP0_FPD_awprot(Conn1_AWPROT),
        .M_AXI_HP0_FPD_awqos(Conn1_AWQOS),
        .M_AXI_HP0_FPD_awready(Conn1_AWREADY),
        .M_AXI_HP0_FPD_awsize(Conn1_AWSIZE),
        .M_AXI_HP0_FPD_awuser(Conn1_AWUSER),
        .M_AXI_HP0_FPD_awvalid(Conn1_AWVALID),
        .M_AXI_HP0_FPD_bid(Conn1_BID),
        .M_AXI_HP0_FPD_bready(Conn1_BREADY),
        .M_AXI_HP0_FPD_bresp(Conn1_BRESP),
        .M_AXI_HP0_FPD_bvalid(Conn1_BVALID),
        .M_AXI_HP0_FPD_rdata(Conn1_RDATA),
        .M_AXI_HP0_FPD_rid(Conn1_RID),
        .M_AXI_HP0_FPD_rlast(Conn1_RLAST),
        .M_AXI_HP0_FPD_rready(Conn1_RREADY),
        .M_AXI_HP0_FPD_rresp(Conn1_RRESP),
        .M_AXI_HP0_FPD_rvalid(Conn1_RVALID),
        .M_AXI_HP0_FPD_wdata(Conn1_WDATA),
        .M_AXI_HP0_FPD_wlast(Conn1_WLAST),
        .M_AXI_HP0_FPD_wready(Conn1_WREADY),
        .M_AXI_HP0_FPD_wstrb(Conn1_WSTRB),
        .M_AXI_HP0_FPD_wvalid(Conn1_WVALID),
        .M_AXI_HP1_FPD_araddr(Conn2_ARADDR),
        .M_AXI_HP1_FPD_arburst(Conn2_ARBURST),
        .M_AXI_HP1_FPD_arcache(Conn2_ARCACHE),
        .M_AXI_HP1_FPD_arid(Conn2_ARID),
        .M_AXI_HP1_FPD_arlen(Conn2_ARLEN),
        .M_AXI_HP1_FPD_arlock(Conn2_ARLOCK),
        .M_AXI_HP1_FPD_arprot(Conn2_ARPROT),
        .M_AXI_HP1_FPD_arqos(Conn2_ARQOS),
        .M_AXI_HP1_FPD_arready(Conn2_ARREADY),
        .M_AXI_HP1_FPD_arsize(Conn2_ARSIZE),
        .M_AXI_HP1_FPD_aruser(Conn2_ARUSER),
        .M_AXI_HP1_FPD_arvalid(Conn2_ARVALID),
        .M_AXI_HP1_FPD_awaddr(Conn2_AWADDR),
        .M_AXI_HP1_FPD_awburst(Conn2_AWBURST),
        .M_AXI_HP1_FPD_awcache(Conn2_AWCACHE),
        .M_AXI_HP1_FPD_awid(Conn2_AWID),
        .M_AXI_HP1_FPD_awlen(Conn2_AWLEN),
        .M_AXI_HP1_FPD_awlock(Conn2_AWLOCK),
        .M_AXI_HP1_FPD_awprot(Conn2_AWPROT),
        .M_AXI_HP1_FPD_awqos(Conn2_AWQOS),
        .M_AXI_HP1_FPD_awready(Conn2_AWREADY),
        .M_AXI_HP1_FPD_awsize(Conn2_AWSIZE),
        .M_AXI_HP1_FPD_awuser(Conn2_AWUSER),
        .M_AXI_HP1_FPD_awvalid(Conn2_AWVALID),
        .M_AXI_HP1_FPD_bid(Conn2_BID),
        .M_AXI_HP1_FPD_bready(Conn2_BREADY),
        .M_AXI_HP1_FPD_bresp(Conn2_BRESP),
        .M_AXI_HP1_FPD_bvalid(Conn2_BVALID),
        .M_AXI_HP1_FPD_rdata(Conn2_RDATA),
        .M_AXI_HP1_FPD_rid(Conn2_RID),
        .M_AXI_HP1_FPD_rlast(Conn2_RLAST),
        .M_AXI_HP1_FPD_rready(Conn2_RREADY),
        .M_AXI_HP1_FPD_rresp(Conn2_RRESP),
        .M_AXI_HP1_FPD_rvalid(Conn2_RVALID),
        .M_AXI_HP1_FPD_wdata(Conn2_WDATA),
        .M_AXI_HP1_FPD_wlast(Conn2_WLAST),
        .M_AXI_HP1_FPD_wready(Conn2_WREADY),
        .M_AXI_HP1_FPD_wstrb(Conn2_WSTRB),
        .M_AXI_HP1_FPD_wvalid(Conn2_WVALID),
        .M_AXI_LPD_araddr(Conn3_ARADDR),
        .M_AXI_LPD_arburst(Conn3_ARBURST),
        .M_AXI_LPD_arcache(Conn3_ARCACHE),
        .M_AXI_LPD_arid(Conn3_ARID),
        .M_AXI_LPD_arlen(Conn3_ARLEN),
        .M_AXI_LPD_arlock(Conn3_ARLOCK),
        .M_AXI_LPD_arprot(Conn3_ARPROT),
        .M_AXI_LPD_arqos(Conn3_ARQOS),
        .M_AXI_LPD_arready(Conn3_ARREADY),
        .M_AXI_LPD_arsize(Conn3_ARSIZE),
        .M_AXI_LPD_aruser(Conn3_ARUSER),
        .M_AXI_LPD_arvalid(Conn3_ARVALID),
        .M_AXI_LPD_awaddr(Conn3_AWADDR),
        .M_AXI_LPD_awburst(Conn3_AWBURST),
        .M_AXI_LPD_awcache(Conn3_AWCACHE),
        .M_AXI_LPD_awid(Conn3_AWID),
        .M_AXI_LPD_awlen(Conn3_AWLEN),
        .M_AXI_LPD_awlock(Conn3_AWLOCK),
        .M_AXI_LPD_awprot(Conn3_AWPROT),
        .M_AXI_LPD_awqos(Conn3_AWQOS),
        .M_AXI_LPD_awready(Conn3_AWREADY),
        .M_AXI_LPD_awsize(Conn3_AWSIZE),
        .M_AXI_LPD_awuser(Conn3_AWUSER),
        .M_AXI_LPD_awvalid(Conn3_AWVALID),
        .M_AXI_LPD_bid(Conn3_BID),
        .M_AXI_LPD_bready(Conn3_BREADY),
        .M_AXI_LPD_bresp(Conn3_BRESP),
        .M_AXI_LPD_bvalid(Conn3_BVALID),
        .M_AXI_LPD_rdata(Conn3_RDATA),
        .M_AXI_LPD_rid(Conn3_RID),
        .M_AXI_LPD_rlast(Conn3_RLAST),
        .M_AXI_LPD_rready(Conn3_RREADY),
        .M_AXI_LPD_rresp(Conn3_RRESP),
        .M_AXI_LPD_rvalid(Conn3_RVALID),
        .M_AXI_LPD_wdata(Conn3_WDATA),
        .M_AXI_LPD_wlast(Conn3_WLAST),
        .M_AXI_LPD_wready(Conn3_WREADY),
        .M_AXI_LPD_wstrb(Conn3_WSTRB),
        .M_AXI_LPD_wvalid(Conn3_WVALID),
        .RSTn_INTC(hier_dpu_clk_RSTn_INTC),
        .RSTn_PERI(hier_dpu_clk_RSTn_PERI));
  hier_dpu_irq_imp_7KP66F hier_dpu_irq
       (.INTR(hier_dpu_irq_INTR),
        .In0(DPUCZDX8G_dpu0_interrupt));
endmodule

module hier_dpu_irq_imp_7KP66F
   (INTR,
    In0);
  output [0:0]INTR;
  input [0:0]In0;

  wire [0:0]In0_1;
  wire [0:0]dpu_concat_irq_inner_dout;

  assign INTR[0] = dpu_concat_irq_inner_dout;
  assign In0_1 = In0[0];
  top_dpu_concat_irq_inner_0 dpu_concat_irq_inner
       (.In0(In0_1),
        .dout(dpu_concat_irq_inner_dout));
endmodule

module s00_couplers_imp_1UZ280X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [1:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire [0:0]auto_cc_to_s00_couplers_ARUSER;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [39:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [1:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire [0:0]auto_cc_to_s00_couplers_AWUSER;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [5:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [127:0]auto_cc_to_s00_couplers_RDATA;
  wire [5:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [127:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [15:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [1:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [39:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [1:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [1:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [127:0]s00_couplers_to_auto_cc_RDATA;
  wire [1:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [127:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [15:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser = auto_cc_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser = auto_cc_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[1:0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[1:0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[1:0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[1:0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  top_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID[1:0]),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID[1:0]),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_UQ15FJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [1:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire [0:0]auto_cc_to_s00_couplers_ARUSER;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [39:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [1:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire [0:0]auto_cc_to_s00_couplers_AWUSER;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [5:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [127:0]auto_cc_to_s00_couplers_RDATA;
  wire [5:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [127:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [15:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [1:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [39:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [1:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [1:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [127:0]s00_couplers_to_auto_cc_RDATA;
  wire [1:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [127:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [15:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser = auto_cc_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser = auto_cc_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[1:0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[1:0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[1:0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[1:0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  top_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID[1:0]),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID[1:0]),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_VZUKLR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_cc_to_s00_couplers_ARADDR;
  wire [1:0]auto_cc_to_s00_couplers_ARBURST;
  wire [3:0]auto_cc_to_s00_couplers_ARCACHE;
  wire [1:0]auto_cc_to_s00_couplers_ARID;
  wire [7:0]auto_cc_to_s00_couplers_ARLEN;
  wire [0:0]auto_cc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire [3:0]auto_cc_to_s00_couplers_ARQOS;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire [2:0]auto_cc_to_s00_couplers_ARSIZE;
  wire [0:0]auto_cc_to_s00_couplers_ARUSER;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [39:0]auto_cc_to_s00_couplers_AWADDR;
  wire [1:0]auto_cc_to_s00_couplers_AWBURST;
  wire [3:0]auto_cc_to_s00_couplers_AWCACHE;
  wire [1:0]auto_cc_to_s00_couplers_AWID;
  wire [7:0]auto_cc_to_s00_couplers_AWLEN;
  wire [0:0]auto_cc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire [3:0]auto_cc_to_s00_couplers_AWQOS;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire [2:0]auto_cc_to_s00_couplers_AWSIZE;
  wire [0:0]auto_cc_to_s00_couplers_AWUSER;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire [5:0]auto_cc_to_s00_couplers_BID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire [5:0]auto_cc_to_s00_couplers_RID;
  wire auto_cc_to_s00_couplers_RLAST;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WLAST;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [1:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [39:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [1:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [1:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [31:0]s00_couplers_to_auto_cc_RDATA;
  wire [1:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [31:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [3:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = auto_cc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = auto_cc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser = auto_cc_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = auto_cc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = auto_cc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser = auto_cc_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[1:0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[1:0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[1:0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[1:0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  top_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_s00_couplers_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_couplers_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_s00_couplers_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_couplers_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_s00_couplers_BID[1:0]),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_s00_couplers_RID[1:0]),
        .m_axi_rlast(auto_cc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=22,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=10,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   ();

  wire [0:0]dpu_concat_irq_dout;
  wire hier_dpu_GHP_CLK_O;
  wire [0:0]hier_dpu_INTR;
  wire [39:0]hier_dpu_M_AXI_HP0_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP0_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP0_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP0_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP0_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP0_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP0_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP0_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP0_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP0_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP0_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP0_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP0_FPD_BID;
  wire hier_dpu_M_AXI_HP0_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_BRESP;
  wire hier_dpu_M_AXI_HP0_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP0_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP0_FPD_RID;
  wire hier_dpu_M_AXI_HP0_FPD_RLAST;
  wire hier_dpu_M_AXI_HP0_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_RRESP;
  wire hier_dpu_M_AXI_HP0_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP0_FPD_WDATA;
  wire hier_dpu_M_AXI_HP0_FPD_WLAST;
  wire hier_dpu_M_AXI_HP0_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP0_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP0_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HP1_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP1_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP1_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP1_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP1_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP1_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP1_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP1_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP1_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP1_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP1_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP1_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP1_FPD_BID;
  wire hier_dpu_M_AXI_HP1_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_BRESP;
  wire hier_dpu_M_AXI_HP1_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP1_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP1_FPD_RID;
  wire hier_dpu_M_AXI_HP1_FPD_RLAST;
  wire hier_dpu_M_AXI_HP1_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_RRESP;
  wire hier_dpu_M_AXI_HP1_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP1_FPD_WDATA;
  wire hier_dpu_M_AXI_HP1_FPD_WLAST;
  wire hier_dpu_M_AXI_HP1_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP1_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP1_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_LPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_LPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_LPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_LPD_ARID;
  wire [7:0]hier_dpu_M_AXI_LPD_ARLEN;
  wire hier_dpu_M_AXI_LPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_LPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_LPD_ARQOS;
  wire hier_dpu_M_AXI_LPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_LPD_ARSIZE;
  wire hier_dpu_M_AXI_LPD_ARUSER;
  wire hier_dpu_M_AXI_LPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_LPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_LPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_LPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_LPD_AWID;
  wire [7:0]hier_dpu_M_AXI_LPD_AWLEN;
  wire hier_dpu_M_AXI_LPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_LPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_LPD_AWQOS;
  wire hier_dpu_M_AXI_LPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_LPD_AWSIZE;
  wire hier_dpu_M_AXI_LPD_AWUSER;
  wire hier_dpu_M_AXI_LPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_LPD_BID;
  wire hier_dpu_M_AXI_LPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_LPD_BRESP;
  wire hier_dpu_M_AXI_LPD_BVALID;
  wire [31:0]hier_dpu_M_AXI_LPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_LPD_RID;
  wire hier_dpu_M_AXI_LPD_RLAST;
  wire hier_dpu_M_AXI_LPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_LPD_RRESP;
  wire hier_dpu_M_AXI_LPD_RVALID;
  wire [31:0]hier_dpu_M_AXI_LPD_WDATA;
  wire hier_dpu_M_AXI_LPD_WLAST;
  wire hier_dpu_M_AXI_LPD_WREADY;
  wire [3:0]hier_dpu_M_AXI_LPD_WSTRB;
  wire hier_dpu_M_AXI_LPD_WVALID;
  wire [0:0]rst_gen_ghp_peripheral_aresetn;
  wire [0:0]rst_gen_reg_peripheral_aresetn;
  wire [39:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_pl_clk0;
  wire zynq_ultra_ps_e_pl_clk1;
  wire zynq_ultra_ps_e_pl_resetn0;

  top_dpu_concat_irq_0 dpu_concat_irq
       (.In0(hier_dpu_INTR),
        .dout(dpu_concat_irq_dout));
  hier_dpu_imp_CAA3KC hier_dpu
       (.CLK(zynq_ultra_ps_e_pl_clk0),
        .GHP_CLK_I(zynq_ultra_ps_e_pl_clk1),
        .GHP_CLK_O(hier_dpu_GHP_CLK_O),
        .GHP_RSTn(rst_gen_ghp_peripheral_aresetn),
        .INTR(hier_dpu_INTR),
        .M_AXI_HP0_FPD_araddr(hier_dpu_M_AXI_HP0_FPD_ARADDR),
        .M_AXI_HP0_FPD_arburst(hier_dpu_M_AXI_HP0_FPD_ARBURST),
        .M_AXI_HP0_FPD_arcache(hier_dpu_M_AXI_HP0_FPD_ARCACHE),
        .M_AXI_HP0_FPD_arid(hier_dpu_M_AXI_HP0_FPD_ARID),
        .M_AXI_HP0_FPD_arlen(hier_dpu_M_AXI_HP0_FPD_ARLEN),
        .M_AXI_HP0_FPD_arlock(hier_dpu_M_AXI_HP0_FPD_ARLOCK),
        .M_AXI_HP0_FPD_arprot(hier_dpu_M_AXI_HP0_FPD_ARPROT),
        .M_AXI_HP0_FPD_arqos(hier_dpu_M_AXI_HP0_FPD_ARQOS),
        .M_AXI_HP0_FPD_arready(hier_dpu_M_AXI_HP0_FPD_ARREADY),
        .M_AXI_HP0_FPD_arsize(hier_dpu_M_AXI_HP0_FPD_ARSIZE),
        .M_AXI_HP0_FPD_aruser(hier_dpu_M_AXI_HP0_FPD_ARUSER),
        .M_AXI_HP0_FPD_arvalid(hier_dpu_M_AXI_HP0_FPD_ARVALID),
        .M_AXI_HP0_FPD_awaddr(hier_dpu_M_AXI_HP0_FPD_AWADDR),
        .M_AXI_HP0_FPD_awburst(hier_dpu_M_AXI_HP0_FPD_AWBURST),
        .M_AXI_HP0_FPD_awcache(hier_dpu_M_AXI_HP0_FPD_AWCACHE),
        .M_AXI_HP0_FPD_awid(hier_dpu_M_AXI_HP0_FPD_AWID),
        .M_AXI_HP0_FPD_awlen(hier_dpu_M_AXI_HP0_FPD_AWLEN),
        .M_AXI_HP0_FPD_awlock(hier_dpu_M_AXI_HP0_FPD_AWLOCK),
        .M_AXI_HP0_FPD_awprot(hier_dpu_M_AXI_HP0_FPD_AWPROT),
        .M_AXI_HP0_FPD_awqos(hier_dpu_M_AXI_HP0_FPD_AWQOS),
        .M_AXI_HP0_FPD_awready(hier_dpu_M_AXI_HP0_FPD_AWREADY),
        .M_AXI_HP0_FPD_awsize(hier_dpu_M_AXI_HP0_FPD_AWSIZE),
        .M_AXI_HP0_FPD_awuser(hier_dpu_M_AXI_HP0_FPD_AWUSER),
        .M_AXI_HP0_FPD_awvalid(hier_dpu_M_AXI_HP0_FPD_AWVALID),
        .M_AXI_HP0_FPD_bid(hier_dpu_M_AXI_HP0_FPD_BID),
        .M_AXI_HP0_FPD_bready(hier_dpu_M_AXI_HP0_FPD_BREADY),
        .M_AXI_HP0_FPD_bresp(hier_dpu_M_AXI_HP0_FPD_BRESP),
        .M_AXI_HP0_FPD_bvalid(hier_dpu_M_AXI_HP0_FPD_BVALID),
        .M_AXI_HP0_FPD_rdata(hier_dpu_M_AXI_HP0_FPD_RDATA),
        .M_AXI_HP0_FPD_rid(hier_dpu_M_AXI_HP0_FPD_RID),
        .M_AXI_HP0_FPD_rlast(hier_dpu_M_AXI_HP0_FPD_RLAST),
        .M_AXI_HP0_FPD_rready(hier_dpu_M_AXI_HP0_FPD_RREADY),
        .M_AXI_HP0_FPD_rresp(hier_dpu_M_AXI_HP0_FPD_RRESP),
        .M_AXI_HP0_FPD_rvalid(hier_dpu_M_AXI_HP0_FPD_RVALID),
        .M_AXI_HP0_FPD_wdata(hier_dpu_M_AXI_HP0_FPD_WDATA),
        .M_AXI_HP0_FPD_wlast(hier_dpu_M_AXI_HP0_FPD_WLAST),
        .M_AXI_HP0_FPD_wready(hier_dpu_M_AXI_HP0_FPD_WREADY),
        .M_AXI_HP0_FPD_wstrb(hier_dpu_M_AXI_HP0_FPD_WSTRB),
        .M_AXI_HP0_FPD_wvalid(hier_dpu_M_AXI_HP0_FPD_WVALID),
        .M_AXI_HP1_FPD_araddr(hier_dpu_M_AXI_HP1_FPD_ARADDR),
        .M_AXI_HP1_FPD_arburst(hier_dpu_M_AXI_HP1_FPD_ARBURST),
        .M_AXI_HP1_FPD_arcache(hier_dpu_M_AXI_HP1_FPD_ARCACHE),
        .M_AXI_HP1_FPD_arid(hier_dpu_M_AXI_HP1_FPD_ARID),
        .M_AXI_HP1_FPD_arlen(hier_dpu_M_AXI_HP1_FPD_ARLEN),
        .M_AXI_HP1_FPD_arlock(hier_dpu_M_AXI_HP1_FPD_ARLOCK),
        .M_AXI_HP1_FPD_arprot(hier_dpu_M_AXI_HP1_FPD_ARPROT),
        .M_AXI_HP1_FPD_arqos(hier_dpu_M_AXI_HP1_FPD_ARQOS),
        .M_AXI_HP1_FPD_arready(hier_dpu_M_AXI_HP1_FPD_ARREADY),
        .M_AXI_HP1_FPD_arsize(hier_dpu_M_AXI_HP1_FPD_ARSIZE),
        .M_AXI_HP1_FPD_aruser(hier_dpu_M_AXI_HP1_FPD_ARUSER),
        .M_AXI_HP1_FPD_arvalid(hier_dpu_M_AXI_HP1_FPD_ARVALID),
        .M_AXI_HP1_FPD_awaddr(hier_dpu_M_AXI_HP1_FPD_AWADDR),
        .M_AXI_HP1_FPD_awburst(hier_dpu_M_AXI_HP1_FPD_AWBURST),
        .M_AXI_HP1_FPD_awcache(hier_dpu_M_AXI_HP1_FPD_AWCACHE),
        .M_AXI_HP1_FPD_awid(hier_dpu_M_AXI_HP1_FPD_AWID),
        .M_AXI_HP1_FPD_awlen(hier_dpu_M_AXI_HP1_FPD_AWLEN),
        .M_AXI_HP1_FPD_awlock(hier_dpu_M_AXI_HP1_FPD_AWLOCK),
        .M_AXI_HP1_FPD_awprot(hier_dpu_M_AXI_HP1_FPD_AWPROT),
        .M_AXI_HP1_FPD_awqos(hier_dpu_M_AXI_HP1_FPD_AWQOS),
        .M_AXI_HP1_FPD_awready(hier_dpu_M_AXI_HP1_FPD_AWREADY),
        .M_AXI_HP1_FPD_awsize(hier_dpu_M_AXI_HP1_FPD_AWSIZE),
        .M_AXI_HP1_FPD_awuser(hier_dpu_M_AXI_HP1_FPD_AWUSER),
        .M_AXI_HP1_FPD_awvalid(hier_dpu_M_AXI_HP1_FPD_AWVALID),
        .M_AXI_HP1_FPD_bid(hier_dpu_M_AXI_HP1_FPD_BID),
        .M_AXI_HP1_FPD_bready(hier_dpu_M_AXI_HP1_FPD_BREADY),
        .M_AXI_HP1_FPD_bresp(hier_dpu_M_AXI_HP1_FPD_BRESP),
        .M_AXI_HP1_FPD_bvalid(hier_dpu_M_AXI_HP1_FPD_BVALID),
        .M_AXI_HP1_FPD_rdata(hier_dpu_M_AXI_HP1_FPD_RDATA),
        .M_AXI_HP1_FPD_rid(hier_dpu_M_AXI_HP1_FPD_RID),
        .M_AXI_HP1_FPD_rlast(hier_dpu_M_AXI_HP1_FPD_RLAST),
        .M_AXI_HP1_FPD_rready(hier_dpu_M_AXI_HP1_FPD_RREADY),
        .M_AXI_HP1_FPD_rresp(hier_dpu_M_AXI_HP1_FPD_RRESP),
        .M_AXI_HP1_FPD_rvalid(hier_dpu_M_AXI_HP1_FPD_RVALID),
        .M_AXI_HP1_FPD_wdata(hier_dpu_M_AXI_HP1_FPD_WDATA),
        .M_AXI_HP1_FPD_wlast(hier_dpu_M_AXI_HP1_FPD_WLAST),
        .M_AXI_HP1_FPD_wready(hier_dpu_M_AXI_HP1_FPD_WREADY),
        .M_AXI_HP1_FPD_wstrb(hier_dpu_M_AXI_HP1_FPD_WSTRB),
        .M_AXI_HP1_FPD_wvalid(hier_dpu_M_AXI_HP1_FPD_WVALID),
        .M_AXI_LPD_araddr(hier_dpu_M_AXI_LPD_ARADDR),
        .M_AXI_LPD_arburst(hier_dpu_M_AXI_LPD_ARBURST),
        .M_AXI_LPD_arcache(hier_dpu_M_AXI_LPD_ARCACHE),
        .M_AXI_LPD_arid(hier_dpu_M_AXI_LPD_ARID),
        .M_AXI_LPD_arlen(hier_dpu_M_AXI_LPD_ARLEN),
        .M_AXI_LPD_arlock(hier_dpu_M_AXI_LPD_ARLOCK),
        .M_AXI_LPD_arprot(hier_dpu_M_AXI_LPD_ARPROT),
        .M_AXI_LPD_arqos(hier_dpu_M_AXI_LPD_ARQOS),
        .M_AXI_LPD_arready(hier_dpu_M_AXI_LPD_ARREADY),
        .M_AXI_LPD_arsize(hier_dpu_M_AXI_LPD_ARSIZE),
        .M_AXI_LPD_aruser(hier_dpu_M_AXI_LPD_ARUSER),
        .M_AXI_LPD_arvalid(hier_dpu_M_AXI_LPD_ARVALID),
        .M_AXI_LPD_awaddr(hier_dpu_M_AXI_LPD_AWADDR),
        .M_AXI_LPD_awburst(hier_dpu_M_AXI_LPD_AWBURST),
        .M_AXI_LPD_awcache(hier_dpu_M_AXI_LPD_AWCACHE),
        .M_AXI_LPD_awid(hier_dpu_M_AXI_LPD_AWID),
        .M_AXI_LPD_awlen(hier_dpu_M_AXI_LPD_AWLEN),
        .M_AXI_LPD_awlock(hier_dpu_M_AXI_LPD_AWLOCK),
        .M_AXI_LPD_awprot(hier_dpu_M_AXI_LPD_AWPROT),
        .M_AXI_LPD_awqos(hier_dpu_M_AXI_LPD_AWQOS),
        .M_AXI_LPD_awready(hier_dpu_M_AXI_LPD_AWREADY),
        .M_AXI_LPD_awsize(hier_dpu_M_AXI_LPD_AWSIZE),
        .M_AXI_LPD_awuser(hier_dpu_M_AXI_LPD_AWUSER),
        .M_AXI_LPD_awvalid(hier_dpu_M_AXI_LPD_AWVALID),
        .M_AXI_LPD_bid(hier_dpu_M_AXI_LPD_BID),
        .M_AXI_LPD_bready(hier_dpu_M_AXI_LPD_BREADY),
        .M_AXI_LPD_bresp(hier_dpu_M_AXI_LPD_BRESP),
        .M_AXI_LPD_bvalid(hier_dpu_M_AXI_LPD_BVALID),
        .M_AXI_LPD_rdata(hier_dpu_M_AXI_LPD_RDATA),
        .M_AXI_LPD_rid(hier_dpu_M_AXI_LPD_RID),
        .M_AXI_LPD_rlast(hier_dpu_M_AXI_LPD_RLAST),
        .M_AXI_LPD_rready(hier_dpu_M_AXI_LPD_RREADY),
        .M_AXI_LPD_rresp(hier_dpu_M_AXI_LPD_RRESP),
        .M_AXI_LPD_rvalid(hier_dpu_M_AXI_LPD_RVALID),
        .M_AXI_LPD_wdata(hier_dpu_M_AXI_LPD_WDATA),
        .M_AXI_LPD_wlast(hier_dpu_M_AXI_LPD_WLAST),
        .M_AXI_LPD_wready(hier_dpu_M_AXI_LPD_WREADY),
        .M_AXI_LPD_wstrb(hier_dpu_M_AXI_LPD_WSTRB),
        .M_AXI_LPD_wvalid(hier_dpu_M_AXI_LPD_WVALID),
        .RSTn(rst_gen_reg_peripheral_aresetn),
        .S_AXI_CLK(zynq_ultra_ps_e_pl_clk0),
        .S_AXI_RSTn(rst_gen_reg_peripheral_aresetn),
        .S_AXI_araddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR),
        .S_AXI_arburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST),
        .S_AXI_arcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .S_AXI_arid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID),
        .S_AXI_arlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN),
        .S_AXI_arlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .S_AXI_arprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT),
        .S_AXI_arqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS),
        .S_AXI_arready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY),
        .S_AXI_arsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .S_AXI_aruser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER),
        .S_AXI_arvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID),
        .S_AXI_awaddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR),
        .S_AXI_awburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST),
        .S_AXI_awcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .S_AXI_awid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID),
        .S_AXI_awlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN),
        .S_AXI_awlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .S_AXI_awprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT),
        .S_AXI_awqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS),
        .S_AXI_awready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY),
        .S_AXI_awsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .S_AXI_awuser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER),
        .S_AXI_awvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID),
        .S_AXI_bid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID),
        .S_AXI_bready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY),
        .S_AXI_bresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP),
        .S_AXI_bvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID),
        .S_AXI_rdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA),
        .S_AXI_rid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID),
        .S_AXI_rlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST),
        .S_AXI_rready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY),
        .S_AXI_rresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP),
        .S_AXI_rvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID),
        .S_AXI_wdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA),
        .S_AXI_wlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST),
        .S_AXI_wready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY),
        .S_AXI_wstrb(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB),
        .S_AXI_wvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID));
  top_rst_gen_ghp_0 rst_gen_ghp
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_gen_ghp_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_pl_clk1));
  top_rst_gen_reg_0 rst_gen_reg
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_gen_reg_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_pl_clk0));
  top_zynq_ultra_ps_e_0 zynq_ultra_ps_e
       (.maxigp2_araddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_pl_clk0),
        .pl_clk1(zynq_ultra_ps_e_pl_clk1),
        .pl_ps_irq0(dpu_concat_irq_dout),
        .pl_ps_irq1(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_pl_resetn0),
        .saxi_lpd_aclk(hier_dpu_GHP_CLK_O),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_ARADDR}),
        .saxigp2_arburst(hier_dpu_M_AXI_HP0_FPD_ARBURST),
        .saxigp2_arcache(hier_dpu_M_AXI_HP0_FPD_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_ARID}),
        .saxigp2_arlen(hier_dpu_M_AXI_HP0_FPD_ARLEN),
        .saxigp2_arlock(hier_dpu_M_AXI_HP0_FPD_ARLOCK),
        .saxigp2_arprot(hier_dpu_M_AXI_HP0_FPD_ARPROT),
        .saxigp2_arqos(hier_dpu_M_AXI_HP0_FPD_ARQOS),
        .saxigp2_arready(hier_dpu_M_AXI_HP0_FPD_ARREADY),
        .saxigp2_arsize(hier_dpu_M_AXI_HP0_FPD_ARSIZE),
        .saxigp2_aruser(hier_dpu_M_AXI_HP0_FPD_ARUSER),
        .saxigp2_arvalid(hier_dpu_M_AXI_HP0_FPD_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_AWADDR}),
        .saxigp2_awburst(hier_dpu_M_AXI_HP0_FPD_AWBURST),
        .saxigp2_awcache(hier_dpu_M_AXI_HP0_FPD_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_AWID}),
        .saxigp2_awlen(hier_dpu_M_AXI_HP0_FPD_AWLEN),
        .saxigp2_awlock(hier_dpu_M_AXI_HP0_FPD_AWLOCK),
        .saxigp2_awprot(hier_dpu_M_AXI_HP0_FPD_AWPROT),
        .saxigp2_awqos(hier_dpu_M_AXI_HP0_FPD_AWQOS),
        .saxigp2_awready(hier_dpu_M_AXI_HP0_FPD_AWREADY),
        .saxigp2_awsize(hier_dpu_M_AXI_HP0_FPD_AWSIZE),
        .saxigp2_awuser(hier_dpu_M_AXI_HP0_FPD_AWUSER),
        .saxigp2_awvalid(hier_dpu_M_AXI_HP0_FPD_AWVALID),
        .saxigp2_bid(hier_dpu_M_AXI_HP0_FPD_BID),
        .saxigp2_bready(hier_dpu_M_AXI_HP0_FPD_BREADY),
        .saxigp2_bresp(hier_dpu_M_AXI_HP0_FPD_BRESP),
        .saxigp2_bvalid(hier_dpu_M_AXI_HP0_FPD_BVALID),
        .saxigp2_rdata(hier_dpu_M_AXI_HP0_FPD_RDATA),
        .saxigp2_rid(hier_dpu_M_AXI_HP0_FPD_RID),
        .saxigp2_rlast(hier_dpu_M_AXI_HP0_FPD_RLAST),
        .saxigp2_rready(hier_dpu_M_AXI_HP0_FPD_RREADY),
        .saxigp2_rresp(hier_dpu_M_AXI_HP0_FPD_RRESP),
        .saxigp2_rvalid(hier_dpu_M_AXI_HP0_FPD_RVALID),
        .saxigp2_wdata(hier_dpu_M_AXI_HP0_FPD_WDATA),
        .saxigp2_wlast(hier_dpu_M_AXI_HP0_FPD_WLAST),
        .saxigp2_wready(hier_dpu_M_AXI_HP0_FPD_WREADY),
        .saxigp2_wstrb(hier_dpu_M_AXI_HP0_FPD_WSTRB),
        .saxigp2_wvalid(hier_dpu_M_AXI_HP0_FPD_WVALID),
        .saxigp3_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_ARADDR}),
        .saxigp3_arburst(hier_dpu_M_AXI_HP1_FPD_ARBURST),
        .saxigp3_arcache(hier_dpu_M_AXI_HP1_FPD_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_ARID}),
        .saxigp3_arlen(hier_dpu_M_AXI_HP1_FPD_ARLEN),
        .saxigp3_arlock(hier_dpu_M_AXI_HP1_FPD_ARLOCK),
        .saxigp3_arprot(hier_dpu_M_AXI_HP1_FPD_ARPROT),
        .saxigp3_arqos(hier_dpu_M_AXI_HP1_FPD_ARQOS),
        .saxigp3_arready(hier_dpu_M_AXI_HP1_FPD_ARREADY),
        .saxigp3_arsize(hier_dpu_M_AXI_HP1_FPD_ARSIZE),
        .saxigp3_aruser(hier_dpu_M_AXI_HP1_FPD_ARUSER),
        .saxigp3_arvalid(hier_dpu_M_AXI_HP1_FPD_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_AWADDR}),
        .saxigp3_awburst(hier_dpu_M_AXI_HP1_FPD_AWBURST),
        .saxigp3_awcache(hier_dpu_M_AXI_HP1_FPD_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_AWID}),
        .saxigp3_awlen(hier_dpu_M_AXI_HP1_FPD_AWLEN),
        .saxigp3_awlock(hier_dpu_M_AXI_HP1_FPD_AWLOCK),
        .saxigp3_awprot(hier_dpu_M_AXI_HP1_FPD_AWPROT),
        .saxigp3_awqos(hier_dpu_M_AXI_HP1_FPD_AWQOS),
        .saxigp3_awready(hier_dpu_M_AXI_HP1_FPD_AWREADY),
        .saxigp3_awsize(hier_dpu_M_AXI_HP1_FPD_AWSIZE),
        .saxigp3_awuser(hier_dpu_M_AXI_HP1_FPD_AWUSER),
        .saxigp3_awvalid(hier_dpu_M_AXI_HP1_FPD_AWVALID),
        .saxigp3_bid(hier_dpu_M_AXI_HP1_FPD_BID),
        .saxigp3_bready(hier_dpu_M_AXI_HP1_FPD_BREADY),
        .saxigp3_bresp(hier_dpu_M_AXI_HP1_FPD_BRESP),
        .saxigp3_bvalid(hier_dpu_M_AXI_HP1_FPD_BVALID),
        .saxigp3_rdata(hier_dpu_M_AXI_HP1_FPD_RDATA),
        .saxigp3_rid(hier_dpu_M_AXI_HP1_FPD_RID),
        .saxigp3_rlast(hier_dpu_M_AXI_HP1_FPD_RLAST),
        .saxigp3_rready(hier_dpu_M_AXI_HP1_FPD_RREADY),
        .saxigp3_rresp(hier_dpu_M_AXI_HP1_FPD_RRESP),
        .saxigp3_rvalid(hier_dpu_M_AXI_HP1_FPD_RVALID),
        .saxigp3_wdata(hier_dpu_M_AXI_HP1_FPD_WDATA),
        .saxigp3_wlast(hier_dpu_M_AXI_HP1_FPD_WLAST),
        .saxigp3_wready(hier_dpu_M_AXI_HP1_FPD_WREADY),
        .saxigp3_wstrb(hier_dpu_M_AXI_HP1_FPD_WSTRB),
        .saxigp3_wvalid(hier_dpu_M_AXI_HP1_FPD_WVALID),
        .saxigp6_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_ARADDR}),
        .saxigp6_arburst(hier_dpu_M_AXI_LPD_ARBURST),
        .saxigp6_arcache(hier_dpu_M_AXI_LPD_ARCACHE),
        .saxigp6_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_ARID}),
        .saxigp6_arlen(hier_dpu_M_AXI_LPD_ARLEN),
        .saxigp6_arlock(hier_dpu_M_AXI_LPD_ARLOCK),
        .saxigp6_arprot(hier_dpu_M_AXI_LPD_ARPROT),
        .saxigp6_arqos(hier_dpu_M_AXI_LPD_ARQOS),
        .saxigp6_arready(hier_dpu_M_AXI_LPD_ARREADY),
        .saxigp6_arsize(hier_dpu_M_AXI_LPD_ARSIZE),
        .saxigp6_aruser(hier_dpu_M_AXI_LPD_ARUSER),
        .saxigp6_arvalid(hier_dpu_M_AXI_LPD_ARVALID),
        .saxigp6_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_AWADDR}),
        .saxigp6_awburst(hier_dpu_M_AXI_LPD_AWBURST),
        .saxigp6_awcache(hier_dpu_M_AXI_LPD_AWCACHE),
        .saxigp6_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_AWID}),
        .saxigp6_awlen(hier_dpu_M_AXI_LPD_AWLEN),
        .saxigp6_awlock(hier_dpu_M_AXI_LPD_AWLOCK),
        .saxigp6_awprot(hier_dpu_M_AXI_LPD_AWPROT),
        .saxigp6_awqos(hier_dpu_M_AXI_LPD_AWQOS),
        .saxigp6_awready(hier_dpu_M_AXI_LPD_AWREADY),
        .saxigp6_awsize(hier_dpu_M_AXI_LPD_AWSIZE),
        .saxigp6_awuser(hier_dpu_M_AXI_LPD_AWUSER),
        .saxigp6_awvalid(hier_dpu_M_AXI_LPD_AWVALID),
        .saxigp6_bid(hier_dpu_M_AXI_LPD_BID),
        .saxigp6_bready(hier_dpu_M_AXI_LPD_BREADY),
        .saxigp6_bresp(hier_dpu_M_AXI_LPD_BRESP),
        .saxigp6_bvalid(hier_dpu_M_AXI_LPD_BVALID),
        .saxigp6_rdata(hier_dpu_M_AXI_LPD_RDATA),
        .saxigp6_rid(hier_dpu_M_AXI_LPD_RID),
        .saxigp6_rlast(hier_dpu_M_AXI_LPD_RLAST),
        .saxigp6_rready(hier_dpu_M_AXI_LPD_RREADY),
        .saxigp6_rresp(hier_dpu_M_AXI_LPD_RRESP),
        .saxigp6_rvalid(hier_dpu_M_AXI_LPD_RVALID),
        .saxigp6_wdata(hier_dpu_M_AXI_LPD_WDATA),
        .saxigp6_wlast(hier_dpu_M_AXI_LPD_WLAST),
        .saxigp6_wready(hier_dpu_M_AXI_LPD_WREADY),
        .saxigp6_wstrb(hier_dpu_M_AXI_LPD_WSTRB),
        .saxigp6_wvalid(hier_dpu_M_AXI_LPD_WVALID),
        .saxihp0_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihp1_fpd_aclk(hier_dpu_GHP_CLK_O));
endmodule

module top_dpu_intc_M_AXI_HP0_FPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [1:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire dpu_intc_M_AXI_HP0_FPD_ACLK_net;
  wire dpu_intc_M_AXI_HP0_FPD_ARESETN_net;
  wire [39:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARADDR;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARBURST;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARCACHE;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARID;
  wire [7:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLEN;
  wire [0:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLOCK;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARPROT;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARQOS;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARREADY;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARSIZE;
  wire [0:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARUSER;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARVALID;
  wire [39:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWADDR;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWBURST;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWCACHE;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWID;
  wire [7:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLEN;
  wire [0:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLOCK;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWPROT;
  wire [3:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWQOS;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWREADY;
  wire [2:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWSIZE;
  wire [0:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWUSER;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWVALID;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BID;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BREADY;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BRESP;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BVALID;
  wire [127:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RDATA;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RID;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RLAST;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RREADY;
  wire [1:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RRESP;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RVALID;
  wire [127:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WDATA;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WLAST;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WREADY;
  wire [15:0]dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WSTRB;
  wire dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARADDR;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARBURST;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARCACHE;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARID;
  wire [7:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLEN;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLOCK;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARPROT;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARQOS;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARREADY;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARSIZE;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARUSER;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARVALID;
  wire [39:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWADDR;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWBURST;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWCACHE;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWID;
  wire [7:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLEN;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLOCK;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWPROT;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWQOS;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWREADY;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWSIZE;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWUSER;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWVALID;
  wire [5:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BID;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BREADY;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BRESP;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BVALID;
  wire [127:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RDATA;
  wire [5:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RID;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RLAST;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RREADY;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RRESP;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RVALID;
  wire [127:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WDATA;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WLAST;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WREADY;
  wire [15:0]s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WSTRB;
  wire s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARCACHE;
  assign M00_AXI_arid[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARSIZE;
  assign M00_AXI_aruser = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWCACHE;
  assign M00_AXI_awid[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWSIZE;
  assign M00_AXI_awuser = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BREADY;
  assign M00_AXI_rready = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[1:0] = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RDATA;
  assign S00_AXI_rid[1:0] = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RID;
  assign S00_AXI_rlast = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RVALID;
  assign S00_AXI_wready = dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WREADY;
  assign dpu_intc_M_AXI_HP0_FPD_ACLK_net = M00_ACLK;
  assign dpu_intc_M_AXI_HP0_FPD_ARESETN_net = M00_ARESETN;
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARID = S00_AXI_arid[1:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWID = S00_AXI_awid[1:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BREADY = S00_AXI_bready;
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RREADY = S00_AXI_rready;
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WREADY = M00_AXI_wready;
  s00_couplers_imp_1UZ280X s00_couplers
       (.M_ACLK(dpu_intc_M_AXI_HP0_FPD_ACLK_net),
        .M_ARESETN(dpu_intc_M_AXI_HP0_FPD_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARADDR),
        .M_AXI_arburst(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARBURST),
        .M_AXI_arcache(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARCACHE),
        .M_AXI_arid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARID),
        .M_AXI_arlen(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLEN),
        .M_AXI_arlock(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARPROT),
        .M_AXI_arqos(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARQOS),
        .M_AXI_arready(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARREADY),
        .M_AXI_arsize(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWADDR),
        .M_AXI_awburst(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWBURST),
        .M_AXI_awcache(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWCACHE),
        .M_AXI_awid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWID),
        .M_AXI_awlen(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLEN),
        .M_AXI_awlock(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWPROT),
        .M_AXI_awqos(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWQOS),
        .M_AXI_awready(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWREADY),
        .M_AXI_awsize(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWVALID),
        .M_AXI_bid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BID),
        .M_AXI_bready(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BREADY),
        .M_AXI_bresp(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BRESP),
        .M_AXI_bvalid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BVALID),
        .M_AXI_rdata(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RDATA),
        .M_AXI_rid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RID),
        .M_AXI_rlast(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RLAST),
        .M_AXI_rready(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RREADY),
        .M_AXI_rresp(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RRESP),
        .M_AXI_rvalid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RVALID),
        .M_AXI_wdata(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WDATA),
        .M_AXI_wlast(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WLAST),
        .M_AXI_wready(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WREADY),
        .M_AXI_wstrb(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARADDR),
        .S_AXI_arburst(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARBURST),
        .S_AXI_arcache(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARCACHE),
        .S_AXI_arid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARID),
        .S_AXI_arlen(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLEN),
        .S_AXI_arlock(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARPROT),
        .S_AXI_arqos(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARQOS),
        .S_AXI_arready(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARREADY),
        .S_AXI_arsize(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWADDR),
        .S_AXI_awburst(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWBURST),
        .S_AXI_awcache(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWCACHE),
        .S_AXI_awid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWID),
        .S_AXI_awlen(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLEN),
        .S_AXI_awlock(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWPROT),
        .S_AXI_awqos(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWQOS),
        .S_AXI_awready(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWREADY),
        .S_AXI_awsize(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWVALID),
        .S_AXI_bid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BID),
        .S_AXI_bready(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BREADY),
        .S_AXI_bresp(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BRESP),
        .S_AXI_bvalid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BVALID),
        .S_AXI_rdata(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RDATA),
        .S_AXI_rid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RID),
        .S_AXI_rlast(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RLAST),
        .S_AXI_rready(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RREADY),
        .S_AXI_rresp(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RRESP),
        .S_AXI_rvalid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RVALID),
        .S_AXI_wdata(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WDATA),
        .S_AXI_wlast(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WLAST),
        .S_AXI_wready(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WREADY),
        .S_AXI_wstrb(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WVALID));
endmodule

module top_dpu_intc_M_AXI_HP1_FPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [1:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire dpu_intc_M_AXI_HP1_FPD_ACLK_net;
  wire dpu_intc_M_AXI_HP1_FPD_ARESETN_net;
  wire [39:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARADDR;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARBURST;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARCACHE;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARID;
  wire [7:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLEN;
  wire [0:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLOCK;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARPROT;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARQOS;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARREADY;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARSIZE;
  wire [0:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARUSER;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARVALID;
  wire [39:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWADDR;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWBURST;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWCACHE;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWID;
  wire [7:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLEN;
  wire [0:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLOCK;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWPROT;
  wire [3:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWQOS;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWREADY;
  wire [2:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWSIZE;
  wire [0:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWUSER;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWVALID;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BID;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BREADY;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BRESP;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BVALID;
  wire [127:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RDATA;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RID;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RLAST;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RREADY;
  wire [1:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RRESP;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RVALID;
  wire [127:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WDATA;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WLAST;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WREADY;
  wire [15:0]dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WSTRB;
  wire dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARADDR;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARBURST;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARCACHE;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARID;
  wire [7:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLEN;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLOCK;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARPROT;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARQOS;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARREADY;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARSIZE;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARUSER;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARVALID;
  wire [39:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWADDR;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWBURST;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWCACHE;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWID;
  wire [7:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLEN;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLOCK;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWPROT;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWQOS;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWREADY;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWSIZE;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWUSER;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWVALID;
  wire [5:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BID;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BREADY;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BRESP;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BVALID;
  wire [127:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RDATA;
  wire [5:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RID;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RLAST;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RREADY;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RRESP;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RVALID;
  wire [127:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WDATA;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WLAST;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WREADY;
  wire [15:0]s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WSTRB;
  wire s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARCACHE;
  assign M00_AXI_arid[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARSIZE;
  assign M00_AXI_aruser = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWCACHE;
  assign M00_AXI_awid[1:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWSIZE;
  assign M00_AXI_awuser = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BREADY;
  assign M00_AXI_rready = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[1:0] = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RDATA;
  assign S00_AXI_rid[1:0] = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RID;
  assign S00_AXI_rlast = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RVALID;
  assign S00_AXI_wready = dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WREADY;
  assign dpu_intc_M_AXI_HP1_FPD_ACLK_net = M00_ACLK;
  assign dpu_intc_M_AXI_HP1_FPD_ARESETN_net = M00_ARESETN;
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARID = S00_AXI_arid[1:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWID = S00_AXI_awid[1:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BREADY = S00_AXI_bready;
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RREADY = S00_AXI_rready;
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WREADY = M00_AXI_wready;
  s00_couplers_imp_UQ15FJ s00_couplers
       (.M_ACLK(dpu_intc_M_AXI_HP1_FPD_ACLK_net),
        .M_ARESETN(dpu_intc_M_AXI_HP1_FPD_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARADDR),
        .M_AXI_arburst(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARBURST),
        .M_AXI_arcache(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARCACHE),
        .M_AXI_arid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARID),
        .M_AXI_arlen(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLEN),
        .M_AXI_arlock(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARPROT),
        .M_AXI_arqos(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARQOS),
        .M_AXI_arready(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARREADY),
        .M_AXI_arsize(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWADDR),
        .M_AXI_awburst(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWBURST),
        .M_AXI_awcache(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWCACHE),
        .M_AXI_awid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWID),
        .M_AXI_awlen(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLEN),
        .M_AXI_awlock(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWPROT),
        .M_AXI_awqos(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWQOS),
        .M_AXI_awready(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWREADY),
        .M_AXI_awsize(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWVALID),
        .M_AXI_bid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BID),
        .M_AXI_bready(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BREADY),
        .M_AXI_bresp(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BRESP),
        .M_AXI_bvalid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BVALID),
        .M_AXI_rdata(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RDATA),
        .M_AXI_rid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RID),
        .M_AXI_rlast(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RLAST),
        .M_AXI_rready(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RREADY),
        .M_AXI_rresp(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RRESP),
        .M_AXI_rvalid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RVALID),
        .M_AXI_wdata(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WDATA),
        .M_AXI_wlast(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WLAST),
        .M_AXI_wready(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WREADY),
        .M_AXI_wstrb(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARADDR),
        .S_AXI_arburst(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARBURST),
        .S_AXI_arcache(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARCACHE),
        .S_AXI_arid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARID),
        .S_AXI_arlen(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLEN),
        .S_AXI_arlock(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARPROT),
        .S_AXI_arqos(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARQOS),
        .S_AXI_arready(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARREADY),
        .S_AXI_arsize(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWADDR),
        .S_AXI_awburst(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWBURST),
        .S_AXI_awcache(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWCACHE),
        .S_AXI_awid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWID),
        .S_AXI_awlen(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLEN),
        .S_AXI_awlock(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWPROT),
        .S_AXI_awqos(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWQOS),
        .S_AXI_awready(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWREADY),
        .S_AXI_awsize(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWVALID),
        .S_AXI_bid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BID),
        .S_AXI_bready(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BREADY),
        .S_AXI_bresp(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BRESP),
        .S_AXI_bvalid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BVALID),
        .S_AXI_rdata(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RDATA),
        .S_AXI_rid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RID),
        .S_AXI_rlast(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RLAST),
        .S_AXI_rready(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RREADY),
        .S_AXI_rresp(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RRESP),
        .S_AXI_rvalid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RVALID),
        .S_AXI_wdata(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WDATA),
        .S_AXI_wlast(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WLAST),
        .S_AXI_wready(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WREADY),
        .S_AXI_wstrb(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WVALID));
endmodule

module top_dpu_intc_M_AXI_LPD_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [1:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [1:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [1:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire dpu_intc_M_AXI_LPD_ACLK_net;
  wire dpu_intc_M_AXI_LPD_ARESETN_net;
  wire [39:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST;
  wire [3:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARID;
  wire [7:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN;
  wire [0:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK;
  wire [2:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT;
  wire [3:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY;
  wire [2:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE;
  wire [0:0]dpu_intc_M_AXI_LPD_to_s00_couplers_ARUSER;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID;
  wire [39:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST;
  wire [3:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWID;
  wire [7:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN;
  wire [0:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK;
  wire [2:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT;
  wire [3:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY;
  wire [2:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE;
  wire [0:0]dpu_intc_M_AXI_LPD_to_s00_couplers_AWUSER;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_BID;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID;
  wire [31:0]dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_RID;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY;
  wire [1:0]dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID;
  wire [31:0]dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY;
  wire [3:0]dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB;
  wire dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARID;
  wire [7:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_ARUSER;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID;
  wire [39:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWID;
  wire [7:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY;
  wire [2:0]s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_AWUSER;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID;
  wire [5:0]s00_couplers_to_dpu_intc_M_AXI_LPD_BID;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID;
  wire [31:0]s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA;
  wire [5:0]s00_couplers_to_dpu_intc_M_AXI_LPD_RID;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY;
  wire [1:0]s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID;
  wire [31:0]s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY;
  wire [3:0]s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB;
  wire s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE;
  assign M00_AXI_arid[1:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE;
  assign M00_AXI_aruser = s00_couplers_to_dpu_intc_M_AXI_LPD_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE;
  assign M00_AXI_awid[1:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE;
  assign M00_AXI_awuser = s00_couplers_to_dpu_intc_M_AXI_LPD_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY;
  assign M00_AXI_rready = s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[1:0] = dpu_intc_M_AXI_LPD_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA;
  assign S00_AXI_rid[1:0] = dpu_intc_M_AXI_LPD_to_s00_couplers_RID;
  assign S00_AXI_rlast = dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID;
  assign S00_AXI_wready = dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY;
  assign dpu_intc_M_AXI_LPD_ACLK_net = M00_ACLK;
  assign dpu_intc_M_AXI_LPD_ARESETN_net = M00_ARESETN;
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARID = S00_AXI_arid[1:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWID = S00_AXI_awid[1:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY = S00_AXI_bready;
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY = S00_AXI_rready;
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_RID = M00_AXI_rid[5:0];
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY = M00_AXI_wready;
  s00_couplers_imp_VZUKLR s00_couplers
       (.M_ACLK(dpu_intc_M_AXI_LPD_ACLK_net),
        .M_ARESETN(dpu_intc_M_AXI_LPD_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR),
        .M_AXI_arburst(s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST),
        .M_AXI_arcache(s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE),
        .M_AXI_arid(s00_couplers_to_dpu_intc_M_AXI_LPD_ARID),
        .M_AXI_arlen(s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN),
        .M_AXI_arlock(s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT),
        .M_AXI_arqos(s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS),
        .M_AXI_arready(s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY),
        .M_AXI_arsize(s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_dpu_intc_M_AXI_LPD_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR),
        .M_AXI_awburst(s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST),
        .M_AXI_awcache(s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE),
        .M_AXI_awid(s00_couplers_to_dpu_intc_M_AXI_LPD_AWID),
        .M_AXI_awlen(s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN),
        .M_AXI_awlock(s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT),
        .M_AXI_awqos(s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS),
        .M_AXI_awready(s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY),
        .M_AXI_awsize(s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_dpu_intc_M_AXI_LPD_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID),
        .M_AXI_bid(s00_couplers_to_dpu_intc_M_AXI_LPD_BID),
        .M_AXI_bready(s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY),
        .M_AXI_bresp(s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP),
        .M_AXI_bvalid(s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID),
        .M_AXI_rdata(s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA),
        .M_AXI_rid(s00_couplers_to_dpu_intc_M_AXI_LPD_RID),
        .M_AXI_rlast(s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST),
        .M_AXI_rready(s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY),
        .M_AXI_rresp(s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP),
        .M_AXI_rvalid(s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID),
        .M_AXI_wdata(s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA),
        .M_AXI_wlast(s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST),
        .M_AXI_wready(s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY),
        .M_AXI_wstrb(s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR),
        .S_AXI_arburst(dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST),
        .S_AXI_arcache(dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE),
        .S_AXI_arid(dpu_intc_M_AXI_LPD_to_s00_couplers_ARID),
        .S_AXI_arlen(dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN),
        .S_AXI_arlock(dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT),
        .S_AXI_arqos(dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS),
        .S_AXI_arready(dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY),
        .S_AXI_arsize(dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(dpu_intc_M_AXI_LPD_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR),
        .S_AXI_awburst(dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST),
        .S_AXI_awcache(dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE),
        .S_AXI_awid(dpu_intc_M_AXI_LPD_to_s00_couplers_AWID),
        .S_AXI_awlen(dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN),
        .S_AXI_awlock(dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT),
        .S_AXI_awqos(dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS),
        .S_AXI_awready(dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY),
        .S_AXI_awsize(dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(dpu_intc_M_AXI_LPD_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID),
        .S_AXI_bid(dpu_intc_M_AXI_LPD_to_s00_couplers_BID),
        .S_AXI_bready(dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY),
        .S_AXI_bresp(dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP),
        .S_AXI_bvalid(dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID),
        .S_AXI_rdata(dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA),
        .S_AXI_rid(dpu_intc_M_AXI_LPD_to_s00_couplers_RID),
        .S_AXI_rlast(dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST),
        .S_AXI_rready(dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY),
        .S_AXI_rresp(dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP),
        .S_AXI_rvalid(dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID),
        .S_AXI_wdata(dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA),
        .S_AXI_wlast(dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST),
        .S_AXI_wready(dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY),
        .S_AXI_wstrb(dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID));
endmodule
