// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 18 00:25:31 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT14TDP_sim_netlist.v
// Design      : LUT14TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT14TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21488)
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
