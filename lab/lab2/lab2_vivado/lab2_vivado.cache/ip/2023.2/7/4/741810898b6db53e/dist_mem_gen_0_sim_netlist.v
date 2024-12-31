// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Mar 30 12:13:23 2024
// Host        : kuro-vlrwx9 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_14 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15936)
`pragma protect data_block
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
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
