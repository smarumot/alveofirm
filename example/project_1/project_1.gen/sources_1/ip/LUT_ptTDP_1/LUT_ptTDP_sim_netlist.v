// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 18 00:25:09 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/smarumot/alveo_firm/kernel_design/fw_sl2/project_1/project_1.gen/sources_1/ip/LUT_ptTDP_1/LUT_ptTDP_sim_netlist.v
// Design      : LUT_ptTDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT_ptTDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module LUT_ptTDP
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.29156 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "LUT_ptTDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  LUT_ptTDP_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21424)
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
