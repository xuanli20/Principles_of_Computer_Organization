// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May  6 17:22:33 2024
// Host        : kuro-vlrwx9 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/kuro/Principles_of_Computer_Organization/lab/lab6/vivado_lab6/vivado_lab6.gen/sources_1/ip/DATA_MEM/DATA_MEM_stub.v
// Design      : DATA_MEM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *)
module DATA_MEM(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[8:0],d[31:0],we,spo[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [8:0]a;
  input [31:0]d;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  output [31:0]spo;
endmodule
