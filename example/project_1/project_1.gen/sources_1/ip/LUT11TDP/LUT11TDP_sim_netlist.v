// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:29:39 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top LUT11TDP -prefix
//               LUT11TDP_ LUT11TDP_sim_netlist.v
// Design      : LUT11TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT11TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module LUT11TDP
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [3:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire [3:0]doutb;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.681873 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "LUT11TDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  LUT11TDP_blk_mem_gen_v8_4_5 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22752)
`pragma protect data_block
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
ickz9gOkToyV
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
