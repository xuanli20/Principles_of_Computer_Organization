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
5usHVeV0xzGadoNizlSy49CslQ==
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
