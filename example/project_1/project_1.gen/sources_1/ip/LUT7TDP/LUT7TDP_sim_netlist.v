// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:30:20 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top LUT7TDP -prefix
//               LUT7TDP_ LUT7TDP_sim_netlist.v
// Design      : LUT7TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT7TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module LUT7TDP
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [2:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [2:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [2:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [2:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [2:0]dina;
  wire [2:0]dinb;
  wire [2:0]douta;
  wire [2:0]doutb;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.494195 mW" *) 
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
  (* C_INIT_FILE = "LUT7TDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "3" *) 
  (* C_READ_WIDTH_B = "3" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  LUT7TDP_blk_mem_gen_v8_4_5 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[2:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24304)
`pragma protect data_block
LAeSnbzEHpHRwvYH7xsfFr+C86UOhVbIqZQAf9by9AlNvc3EyGGTo+7//FLMTKxLCNziSUf5PVHW
eVEbLTSfRb6SeCkSTxEVaMx1M5Fc51sL669/vW7KU1W93+wWKBdvjhsU+eDDE+ub0jDfNOZEymmH
S2H5ErM4EnLKVASnVtU2ncNIHHBaIHdqqhGE505GsRdUBNiznRyIXNr36XvwsTVgzThLsCX9/t+6
x8Y/OjsHSqldPMaLBiRE7bmmT2Ve1TFlOrDRhZWfebJ58jL09pIfeeJgld+Rqk6NFTTvulB4UL/f
wRSfGl8qvd5HX26eJPW0kUJ6cQXYPQJYKxDtdxZRODdH75DjibhHAEUax86Ud6JdPce5EDrAFyZX
u+uHIeUqEXp4Tb2euqQwXrcXseRP+Yfhr6NFTN6pTfwyu1koxvzPVSdQStE9rB+blBddmtwMk0YM
YCQqmT+sa7G/wC5zSV+csjcJHmSctxgy1qwihicXoLy2X96G6FWe4yfMfcVAL9uH3WBKSrMaKXBb
OyoCcAqdxWz1qCFHAiImCqOSnEhROJNYXscbwC0q3Fp64/SWCqPrllW5pVOxH+68STmwlmfXoEGK
CBH9HW7HMEXYQEgyCNSa2mgK75OOnYaJxVcj+u57ML63jduxXCTuViFO9frrUNgBWxnGySy/Xksq
bH2+ZP2QcyFQft1vyNXMB9P1EZrgUxvlVbYqLVI+Trgy+ld5ss8EFMQ/yR4tntHD4I3lLVM/djfM
/sbE8gqpomFACzKhnbaMEMKLZU+7Kl5T6NGidoMh69IISNIz1sI0h333Yiwys/4KOpMxTQoSED3M
Si0z5DW3Qqdls/OL9iOcs9AUb3Sp3zcLzo1hUvka6wdWkiLmYawxQiYpz7biZHSXM7Abu5k/N6gt
Mw2Ib+4lAszvtTdoXHLKxA8Fsib+4wCEzd1O7/bPrD14SBRJ/4+t6wg+8tywWNo53WLajgBZj69Q
is1S1J/iPv0NxFy18Un7s+wL9bz1z6iQI09RKYXbbF8NHu6SjbP4DGcCESOiNXazYmW5NawDhNk+
z3Z24gvdnxIgzD7GLmzKrpu+XjzcJ5j8TOM9Gag0YPJ3MD3SVCbih3ChkG42oyprvoEgfhjDMMFz
Hwc7N5Gdt0TlaFxc5xDsn886nY8scvKubX+v7v595We17bxbmeiIQbDZCuWoqZ2tLPTuD7z6wJT3
wrGO4xx6ZPeOQFOmWLCgXY/IRTKLMThvkiUy3aAaRwn8c/C35ett9Gy920VidVxmWHdUidX9CZS8
ucx/c00v7aQhDYRWPkKsp72IrbrS9p/7luPBk3J3fH28f1iMfLuJpnpaKDj1In7S/rFBUi/45JK6
ByW5MGDzmzQkPA1qWLNC3DpfkorFc2JdH1tAhkaQXP5cnsXPqZ0H3m6NrxQx4we60Bkn/P3+ixkw
Ye9Hi8P2e0jO+JH6Wk6G8oXUgEKhiW80vGOfeyiDzFUtb35VY32NQdriupFQ3nw9jeDGfp+3PolK
N2noajEVSnO5ZaFcoHqswrFguj7p7/aY6kpf1pIzwM8CeyydX6a/BhMjSVPLmrR1AknG2Q2GUAfw
aoo3a+XRAt/dDat9MdGM3QXCbT0p85q9C5GfijSpOfEb7nkOJ4n8HC+RXfgYyZfHnNGlhUnJtAe1
pdpUaL28Pfb+WudEfbBa6GvJnBe64KEEbz/b7waDaWaJOMndxkiQe4hAOvPfLCYcdG6uJi2MzRgO
XDDbVO3N4As0idZbdEbDIAxAad793VSr3oe9hI4jQZj4SzFM58HWqwPW+EuyxDV1UbQ4l4DlDL5S
Zr3jeuXL3uV3gBHuH5Sdggz3tFyoVtZOuvHuthJlvoW+XhrefowMCqpIZkvpdlZJoIxBIZkrxNZr
idTIKHfniOE/4WntolpPgOxAP76/4keudVN9yDNDh9I7HZWARQ8PA2PRScxYGT40RgXjz/iZf3l0
sAJZ2t9DZH3w9V2ZmPAgfte8od5boZrhoDATPWJGmsrXEty+wrI2TBdrl5sSA7Lp4GZjpgzY2Vsh
n5UfV9CYPOdLRT2p3lAEVVc1x9Z6FWi/b8zdP6EJpblwQAlG3bCQZ3no4ldrAYPXBqcNqC23YPft
u3zLf6t0+1DSGwhsEGlfyzDEswNhOxrv3AxwaKmoPVSSDYjOfy4nHL7TuWg3bPeImvVspbVqnt6e
UrW3KFY9rf047CxWpJrwAnKS5VFbZqSpoK5B0ccFf5wxzc+PfE9w+iE79YaJvz9sJareO76LAJDE
Xj4GJgx2q/iKsNwLaA3ad4TESH0EjI4PRneS9/gOz0XCRqk7Rx+7szDbPOLD4lNKU954zCd0SYB6
IqmN+YKfAmEhcieeSlI9qIkRXbOne2IqOGfS28SQZf1h85MziGNS+Pu198T6DjalRFdqQrSpU3YR
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
vdY7yy6EsAY2RQlzl38p7h04mYVO0A==
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
