//***********************************************************
// ECE 3058 Architecture Concurrency and Energy in Computation
//
// RISCV Processor System Verilog Behavioral Model
//
// School of Electrical & Computer Engineering
// Georgia Institute of Technology
// Atlanta, GA 30332
//
//  Engineer:   Zou, Ivan
//  Module:     core_tb
//  Functionality:
//      This is the testbed for the 5 Stage Pipeline RISCV processor
//
//***********************************************************
`timescale 1ns / 1ns

module Core_tb;

// Clock and Reset signals to simulate as input into core
	logic clk = 1;
	logic mem_enable;
	logic reset;

	// local variables to display for testbench
	logic[6:0] cycle_count;
	
	integer i;
	initial
	begin
		cycle_count = 0;

		// do the simulation
		$dumpfile("Core_Simulation.vcd");

		// dump all the signals into the vcd waveforem file
		$dumpvars(0, Core_tb);

		reset = 1'b1;
		mem_enable = 1'b1;

		// Set the Test instructions and preset MEM and Regfile here if desired

		// Start Testbench Test Instructions. First instruction should always be a NOP

		#1 

// 		core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[0] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[1] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[2] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[3] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[4] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[5] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[6] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[7] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[8] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[9] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[10] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[11] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[12] = 8'hfe;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[13] = 8'hc1;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[14] = 8'h04;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[15] = 8'h93;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[16] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[17] = 8'hc5;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[18] = 8'h85;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[19] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[20] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[21] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[22] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[23] = 8'h03;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[24] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[25] = 8'h61;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[26] = 8'h8a;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[27] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[28] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[29] = 8'h39;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[30] = 8'h2a;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[31] = 8'hb3; 

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[32] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[33] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[34] = 8'h05;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[35] = 8'hef; //Functional

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[36] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[37] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[38] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[39] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[40] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[41] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[42] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[43] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[44] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[45] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[46] = 8'h80;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[47] = 8'hb3;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[48] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[49] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[50] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[51] = 8'h03;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[52] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[53] = 8'h64;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[54] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[55] = 8'hb3; //Task 1 Simple

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[56] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[57] = 8'h31;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[58] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[59] = 8'hb3;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[60] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[61] = 8'h41;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[62] = 8'h81;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[63] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[64] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[65] = 8'h52;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[66] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[67] = 8'hb3;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[68] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[69] = 8'h20;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[70] = 8'h82;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[71] = 8'h33; //Task 2 simple

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[72] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[73] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[74] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[75] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[76] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[77] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[78] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[79] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[80] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[81] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[82] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[83] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[84] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[85] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[86] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[87] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[88] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[89] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[90] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[91] = 8'h03;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[92] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[93] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[94] = 8'h23;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[95] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[96] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[97] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[98] = 8'h23;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[99] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[100] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[101] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[102] = 8'h20;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[103] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[104] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[105] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[106] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[107] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[108] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[109] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[110] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[111] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[112] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[113] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[114] = 8'h20;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[115] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[116] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[117] = 8'h71;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[118] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[119] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[120] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[121] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[122] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[123] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[124] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[125] = 8'h41;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[126] = 8'h82;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[127] = 8'h33; //Task 2 


 //program 1
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[0] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[1] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[2] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[3] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[4] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[5] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[6] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[7] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[8] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[9] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[10] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[11] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[12] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[13] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[14] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[15] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[16] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[17] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[18] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[19] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[20] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[21] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[22] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[23] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[24] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[25] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[26] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[27] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[28] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[29] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[30] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[31] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[32] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[33] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[34] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[35] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[36] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[37] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[38] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[39] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[40] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[41] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[42] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[43] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[44] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[45] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[46] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[47] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[48] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[49] = 8'h21;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[50] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[51] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[52] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[53] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[54] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[55] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[56] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[57] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[58] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[59] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[60] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[61] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[62] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[63] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[64] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[65] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[66] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[67] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[68] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[69] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[70] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[71] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[72] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[73] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[74] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[75] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[76] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[77] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[78] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[79] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[80] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[81] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[82] = 8'h08;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[83] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[84] = 8'h41;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[85] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[86] = 8'h07;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[87] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[88] = 8'h41;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[89] = 8'h07;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[90] = 8'h06;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[91] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[92] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[93] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[94] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[95] = 8'h00;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[96] = 8'h41;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[97] = 8'h07;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[98] = 8'h06;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[99] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[100] = 8'h41;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[101] = 8'h06;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[102] = 8'h04;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[103] = 8'hb3;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[104] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[105] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[106] = 8'h81;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[107] = 8'hb3;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[108] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[109] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[110] = 8'h24;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[111] = 8'h83;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[112] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[113] = 8'h34;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[114] = 8'h82;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[115] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[116] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[117] = 8'h34;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[118] = 8'h82;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[119] = 8'h33;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[120] = 8'hfe;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[121] = 8'hc1;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[122] = 8'h01;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[123] = 8'h13;

// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[124] = 8'h00;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[125] = 8'h40;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[126] = 8'h20;
// core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[127] = 8'h83;

		//program 2

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[0] = 8'h00; // program 2
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[1] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[2] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[3] = 8'h00;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[4] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[5] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[6] = 8'h27;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[7] = 8'h83;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[8] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[9] = 8'h17;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[10] = 8'h87;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[11] = 8'h93;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[12] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[13] = 8'h80;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[14] = 8'h05;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[15] = 8'h6f;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[16] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[17] = 8'ha1;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[18] = 8'h82;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[19] = 8'hb3;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[20] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[21] = 8'ha7;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[22] = 8'h82;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[23] = 8'hb3;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[24] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[25] = 8'h40;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[26] = 8'h05;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[27] = 8'hef;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[28] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[29] = 8'h40;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[30] = 8'h06;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[31] = 8'h6f;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[32] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[33] = 8'hc5;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[34] = 8'h82;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[35] = 8'hb3;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[36] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[37] = 8'h32;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[38] = 8'h82;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[39] = 8'hb3;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[40] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[41] = 8'hc0;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[42] = 8'h06;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[43] = 8'hef;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[44] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[45] = 8'h3a;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[46] = 8'h8a;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[47] = 8'h33;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[48] = 8'hfd;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[49] = 8'h9f;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[50] = 8'hf7;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[51] = 8'h6f;

core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[52] = 8'h00;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[53] = 8'h40;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[54] = 8'h26;
core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[55] = 8'h83;





		#6 reset = 1'b0;


    
		#6 reset = 1'b0;

		#50 $finish;
	end

	always
		#1 clk <= clk + 1;

	always @(posedge clk) begin
		if (~reset)
			cycle_count <= cycle_count + 1;
	end

	Core core_proc(
		// Inputs
		.clock(clk),
		.reset(reset),
		.mem_en(mem_enable)
	);

endmodule
