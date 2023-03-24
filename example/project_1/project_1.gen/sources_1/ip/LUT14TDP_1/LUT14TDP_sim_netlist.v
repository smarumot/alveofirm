// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 18 00:25:32 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/smarumot/alveo_firm/kernel_design/fw_sl2/project_1/project_1.gen/sources_1/ip/LUT14TDP_1/LUT14TDP_sim_netlist.v
// Design      : LUT14TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT14TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module LUT14TDP
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
  (* C_INIT_FILE = "LUT14TDP.mem" *) 
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
  LUT14TDP_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21408)
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
