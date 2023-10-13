//***********************************************************
// ECE 3058 Architecture Concurrency and Energy in Computation
//
// RISCV Processor System Verilog Behavioral Model
//
// School of Electrical & Computer Engineering
// Georgia Institute of Technology
// Atlanta, GA 30332
//
//  Module:     core_tb
//  Functionality:
//      Forward Controller for a 5 Stage RISCV Processor
//
//***********************************************************

import CORE_PKG::*;

module FWD_Control (
  input logic reset, 

  input [6:0] id_instr_opcode_ip, // ID/EX pipeline buffer opcode

  input write_back_mux_selector EX_MEM_wb_mux_ip,
  input write_back_mux_selector MEM_WB_wb_mux_ip,

  input logic [4:0] EX_MEM_dest_ip, //EX/MEM Dest Register
  input logic [4:0] MEM_WB_dest_ip, //MEM/WB Dest Register
  input logic [4:0] ID_dest_rs1_ip, //Rs from decode stage
  input logic [4:0] ID_dest_rs2_ip, //Rt from decode stage

  input logic [31:0] ex_alu_result_ip, //alu_result from EX
  input logic ex_alu_result_valid_ip, 
  input logic flush_en_ip,

  output forward_mux_code fa_mux_op, //select lines for forwarding muxes (Rs)
  output forward_mux_code fb_mux_op,  //select lines for forwarding muxes (Rt)
  output logic [31:0] fw_alu_result, //forwarded alu_result
  output logic flush_en_op
);


  logic EX_MEM_RegWrite_en;
  logic MEM_WB_RegWrite_en;

  assign EX_MEM_RegWrite_en = (EX_MEM_wb_mux_ip == NO_WRITEBACK) ? 1'b0 : 1'b1; //write in Ex stage or not
  assign MEM_WB_RegWrite_en = (MEM_WB_wb_mux_ip == NO_WRITEBACK) ? 1'b0 : 1'b1; // write in Mem stage or not

  always @(*) begin
    fa_mux_op = ORIGINAL_SELECT;
    fb_mux_op = ORIGINAL_SELECT;

    if (ex_alu_result_valid_ip && ex_alu_result_ip !== 'x)
		fw_alu_result = ex_alu_result_ip;

    case (id_instr_opcode_ip)

      OPCODE_OP: begin // Register-Register ALU operation

        /**
        * Task 2
        * 
        * Here you will need to check for hazards and decide if and what you will forward 
        * For Register Register instructions, what registers are relevant for you to check 
        */
        if ((EX_MEM_RegWrite_en && EX_MEM_dest_ip !== 5'b0) && (EX_MEM_dest_ip === ID_dest_rs1_ip))
			  fa_mux_op = EX_RESULT_SELECT; // forward from EX stage //ID/EX
		    else if ((MEM_WB_RegWrite_en && MEM_WB_dest_ip !== 5'b0) && !((EX_MEM_RegWrite_en && EX_MEM_dest_ip !== 5'b0) && (EX_MEM_dest_ip === ID_dest_rs1_ip)) && (MEM_WB_dest_ip === ID_dest_rs1_ip))
			  fa_mux_op = WB_RESULT_SELECT; // forward from WB stage

		   if ((EX_MEM_RegWrite_en && EX_MEM_dest_ip !== 5'b0) && (EX_MEM_dest_ip === ID_dest_rs2_ip))
			 fb_mux_op = EX_RESULT_SELECT;  // forward from EX stage //MEM/WB
	    	else if ((MEM_WB_RegWrite_en && MEM_WB_dest_ip !== 5'b0) && !((EX_MEM_RegWrite_en && EX_MEM_dest_ip !== 5'b0) && (EX_MEM_dest_ip === ID_dest_rs2_ip)) && (MEM_WB_dest_ip === ID_dest_rs2_ip))
			 fb_mux_op = WB_RESULT_SELECT;

      end

      OPCODE_OPIMM: begin // Register Immediate 

        /**
        * Task 2
        * 
        * Here you will need to check for hazards and decide if and what you will forward 
        * For Register Register instructions, what registers are relevant for you to check
        */
        if ((EX_MEM_RegWrite_en && EX_MEM_dest_ip !== 5'b0) && (EX_MEM_dest_ip === ID_dest_rs1_ip)) 
        fa_mux_op = EX_RESULT_SELECT;
	    	else if ((MEM_WB_RegWrite_en && MEM_WB_dest_ip !== 5'b0) && !((EX_MEM_RegWrite_en && EX_MEM_dest_ip !== 5'b0) && (EX_MEM_dest_ip === ID_dest_rs1_ip))	&& (MEM_WB_dest_ip === ID_dest_rs1_ip))
		   	fa_mux_op = WB_RESULT_SELECT;
    
      end
   
    endcase
  // merging flush and forward controller as a temp fix
	flush_en_op = 1'b0;
		
	// received passthrough flush_en signal from EX, propagate
	if (flush_en_ip)
		flush_en_op = 1'b1;
		
	case (id_instr_opcode_ip)
		OPCODE_JAL: begin
			flush_en_op = 1'b1;
		end

	endcase


  end
endmodule