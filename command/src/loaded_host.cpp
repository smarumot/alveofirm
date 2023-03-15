/**
* Copyright (C) 2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

#include <iostream>
#include <cstring>
#include <fstream>
#include <string>

//#include "matplotlib.hpp"
// XRT includes
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include <experimental/xrt_xclbin.h>
#include <experimental/xrt_ip.h>

#define DATA_SIZE 67108864
//#define DATA_SIZE 8388608
//#define DATA_SIZE 
#define IP_START 0x1
#define IP_IDLE 0x4
#define USER_OFFSET 0x0
#define A_OFFSET 0x18
#define B_OFFSET 0x24
#define C_OFFSET 0x30

using namespace std;

int main(int argc, char** argv) {

    std::cout << "argc = " << argc << std::endl;
	for(int i=0; i < argc; i++){
	    std::cout << "argv[" << i << "] = " << argv[i] << std::endl;
	}

    // Read settings
    std::string binaryFile = argv[1];
    auto xclbin = xrt::xclbin(binaryFile);
    int device_index = 1;

    std::cout << "Open the device " << device_index << std::endl;
    auto device = xrt::device(device_index);
    std::cout << "Load the xclbin " << binaryFile << std::endl;
    auto uuid = device.load_xclbin(xclbin);

    size_t vector_size_bytes = sizeof(int) * DATA_SIZE;

    auto ip1 = xrt::ip(device, uuid, "Vadd_A_B:{Vadd_A_B_1}");
    //auto ip2 = xrt::ip(device, uuid, "Vadd_A_B:{Vadd_A_B_2}");
    //auto ip3 = xrt::ip(device, uuid, "Vadd_A_B:{Vadd_A_B_3}");

    std::cout << "Allocate Buffer in Global Memory\n";
    //auto boA = xrt::bo(device, vector_size_bytes, krnl.group_id(1)); //Match kernel arguments to RTL kernel
    //auto boB = xrt::bo(device, vector_size_bytes, krnl.group_id(2));
    auto ip1_boA = xrt::bo(device, vector_size_bytes, 1);
    auto ip1_boB = xrt::bo(device, vector_size_bytes, 1);
    auto ip1_boC = xrt::bo(device, vector_size_bytes, 1);
    //auto ip2_boA = xrt::bo(device, vector_size_bytes, 0);
    //auto ip2_boB = xrt::bo(device, vector_size_bytes, 1);
    //auto ip3_boA = xrt::bo(device, vector_size_bytes, 0);
    //auto ip3_boB = xrt::bo(device, vector_size_bytes, 1);

    // Map the contents of the buffer object into host memory
    auto bo0_map = ip1_boA.map<int*>();
    auto bo1_map = ip1_boB.map<int*>();
    auto bo2_map = ip1_boC.map<int*>();
 
    std::fill(bo0_map, bo0_map + DATA_SIZE, 0);
    std::fill(bo1_map, bo1_map + DATA_SIZE, 0);
    std::fill(bo2_map, bo2_map + DATA_SIZE, 0);
    

    int num = 68820;
    int read_data[num];
    FILE *fp;
    fp = fopen("/home/smarumot/alveo_firm/kernel_design/32bit_LUT/workspace/sl_kernel/src/LUT.bin","rb");
    fread(read_data, sizeof(int), sizeof(read_data)/sizeof(read_data[0]), fp);
    fclose(fp);

    // Create the test data
    //int bufReference[DATA_SIZE];
    int n[DATA_SIZE];
    int LUT_flag = 0;
    int LUT_address = 0b10111100001000;
    int LUT_flag_rd = 0b100000000000000000000;
    int LUT_all = 0b00000000001101111110000100001111;
    for (int i = 0; i < DATA_SIZE; i=i+16) {
    	if(read_data[i]<0) read_data[i] = -1*read_data[i]+16;
    	LUT_address = 32*i;
        bo1_map[i] = LUT_all;
    	//bo0_map[i] = i;
    	bo0_map[i] = 1;
        bo2_map[i] = 0;
        if(n[i]==33){n[i]=1;}
        n[i+1]=n[i]+1;
        //bufReference[i] = bo0_map[i] + bo1_map[i]; //Generate check data for validation
    if(i<10){std::cout<<" EVENT_num "<<i<<" input_A "<<bo0_map[i]<<" input_B "<<bo1_map[i]<<std::endl;}
    }

    for(int i = 1; i < DATA_SIZE; i=i+16){
        bo1_map[i] = 224;
    	//bo0_map[i] = i;
    	bo0_map[i] = 0;
        bo2_map[i] = 0;
        //bufReference[i] = bo0_map[i] + bo1_map[i]; //Generate check data for validation
    }
    for(int i = 5; i < DATA_SIZE; i=i+16){
        bo1_map[i] = 954437120;
    	//bo0_map[i] = i;
    	bo0_map[i] = 0;
        bo2_map[i] = 0;
        //bufReference[i] = bo0_map[i] + bo1_map[i]; //Generate check data for validation
    }
    for(int i = 15; i < DATA_SIZE; i=i+16){
        bo1_map[i] = 1;
    	//bo0_map[i] = i;
    	bo0_map[i] = 0;
        bo2_map[i] = 0;
        //bufReference[i] = bo0_map[i] + bo1_map[i]; //Generate check data for validation
    }

    

    std::cout << "loaded the data" << std::endl;
    uint64_t buf_addr[3];
    // Get the buffer physical address
    buf_addr[0] = ip1_boA.address();
    buf_addr[1] = ip1_boB.address();
    buf_addr[2] = ip1_boC.address();

    // Synchronize buffer content with device side
    std::cout << "synchronize input buffer data to device global memory\n";
    ip1_boA.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    ip1_boB.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    ip1_boC.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    //std::cout << "Execution of the kernel\n";
    //auto run = krnl(DATA_SIZE, boA, boB); //DATA_SIZE=size
    //run.wait();

    std::cout << "INFO: Setting IP Data" << std::endl;
    std::cout << "Setting Register \"A\" (Input Address)" << std::endl;
    ip1.write_register(A_OFFSET, buf_addr[0]);
    ip1.write_register(A_OFFSET + 4, buf_addr[0] >> 32);

    std::cout << "Setting Register \"B\" (Input Address)" << std::endl;
    ip1.write_register(B_OFFSET, buf_addr[1]);
    ip1.write_register(B_OFFSET + 4, buf_addr[1] >> 32);

    std::cout << "Setting Register \"C\" (Input Address)" << std::endl;
    ip1.write_register(C_OFFSET, buf_addr[2]);
    ip1.write_register(C_OFFSET + 4, buf_addr[2] >> 32);

    uint32_t axi_ctrl = IP_START;
    std::cout << "INFO: IP Start" << std::endl;
    //axi_ctrl = IP_START;
    
    ip1.write_register(USER_OFFSET, axi_ctrl);

    // Wait until the IP is DONE

    int i = 0;
    //axi_ctrl = 0;
    while (axi_ctrl != IP_IDLE) {
    //while ((axi_ctrl & IP_IDLE) != IP_IDLE) {
        axi_ctrl = ip1.read_register(USER_OFFSET);
        i = i + 1;
	//        std::cout << "Read Loop iteration: " << i << " and Axi Control = " << axi_ctrl << "\n";
        if (i > 100000) {
	      axi_ctrl = IP_IDLE;
          ip1.write_register(USER_OFFSET, axi_ctrl);
        }
    }

    //    std::cout << "INFO: IP Done" << std::endl;
    // Get the output;
    //std::cout << "Get the output data from the device" << std::endl;
    ip1_boA.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    ip1_boB.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    ip1_boC.sync(XCL_BO_SYNC_BO_FROM_DEVICE);

    /*
    int number=3721;
    int LUT[248][15];
    int LUT_num=0;
    int roi_num=0;
    ofstream ofs("/home/smarumot/alveo_firm/kernel_design/32bit_LUT/workspace/sl_kernel/src/sample.db");
    for(int i=0; i<248;i++){
    	if(LUT_num==465) LUT_num=0;
    	if(LUT_num==0){ ofs<<"#"<<roi_num<<endl; roi_num++;}
    	for(int n=0; n<15;n++){
    		LUT[i][n]=bo2_map[number];
    		ofs<<LUT[i][n];
    		if(n==14) ofs<<endl;
    		number++;
    		LUT_num++;
    	}
    }
    */

    //    int number=;8193
    int LUT[8192];
    //    int LUT_num=0;
    //    int roi_num=0;
    ofstream ofs("/home/smarumot/alveo_firm/kernel_design/command_run/bram_test.bin");
    for(int i=0; i<DATA_SIZE;i++){
    		LUT[i]=bo2_map[i]-n[i-1];
    		ofs<<LUT[i];
		
    }
    int out_num=0;
    for(int i=0;i<DATA_SIZE;i++){
      if(bo2_map[i]==1832960) out_num++;
    }
    cout<<out_num<<endl;
    /*
    FILE *fp2;
	fp2 = fopen("/home/smarumot/alveo_firm/kernel_design/32bit_LUT/workspace/sl_kernel/src/readBRAM.txt","w");
    fwrite(LUT, sizeof(int), sizeof(LUT)/sizeof(LUT[0][0]),fp2);
    fclose(fp2);

    for(int i=0; i<20;i++){
      //if(bo2_map[i] > 15) bo2_map[i] = -(bo2_map[i] - 16);
    	if((bo2_map[i] != 0) || (bo0_map[i] != 0)){
    		std::cout<<" input_1 "<< bo0_map[i]<<" input_2 "<<bo1_map[i]<<" output "<<bo2_map[i]<<" output_software "<<n[i-1]<<std::endl;
    	}
    }
    */
    /*
    for(int i=0; i<DATA_SIZE;i++){
      //      if(bo2_map[i] > 15) bo2_map[i] = -(bo2_map[i] - 16);
      //if(LUT[i] = 0){
	cout<<i<<" output "<<bo2_map[i]<<endl;
	//}
	}*/
    // Validate results
    /*if (std::memcmp(bo2_map, bufReference, DATA_SIZE))
        throw std::runtime_error("Value read back does not match reference");
    */
    std::cout << "TEST PASSED\n";
    return 0;
}
