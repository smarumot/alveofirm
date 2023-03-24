// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Dec 21 16:25:38 2022
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.185089 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29184)
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
