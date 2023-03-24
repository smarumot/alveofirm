// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:29:39 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT11TDP_sim_netlist.v
// Design      : LUT11TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT11TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23120)
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
