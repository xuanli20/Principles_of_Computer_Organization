// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Mar 30 12:13:23 2024
// Host        : kuro-vlrwx9 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top dist_mem_gen_0 -prefix
//               dist_mem_gen_0_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    spo);
  input [4:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [4:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15808)
`pragma protect data_block
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
MWKSzMVTw9iSyO0vpFhfPO8eKg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
