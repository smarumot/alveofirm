// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:27:28 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/smarumot/alveo_firm/kernel_design/fw_sl2/project_1/project_1.gen/sources_1/ip/LUT13TDP/LUT13TDP_sim_netlist.v
// Design      : LUT13TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT13TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module LUT13TDP
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [3:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.510232 mW" *) 
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
  (* C_INIT_FILE = "LUT13TDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
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
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  LUT13TDP_blk_mem_gen_v8_4_5 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29840)
`pragma protect data_block
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
EXSI61IAgHLgB6KBs9XNTA6qyBFt5eLJjgONcwc=
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
