module Control(
	inst,
	funct,
	eq,
	PCSrc,
	IF_Flush,
	RegWrite,
	ALURsc,
	ALUOp,
	RegDst,
	MemWrite,
	MemRead,
	MemtoReg,
	Jump,
	JumpR,
	raWrite
);

//input output
	input[5:0] inst;//instruction[31:26]
	input[5:0] funct;//instruction[5:0]
	input eq;//branch detection
	output PCSrc;
	output IF_Flush;//flush reg IF/ID
	output RegWrite;
	output ALURsc;
	output[1:0] ALUOp;
	output RegDst;
	output MemWrite;
	output MemRead;
	output MemtoReg;
	output Jump;
	output JumpR;
	output raWrite;
//reg & wire
	reg[12:0] ctrl;
//combinational
	
	assign PCSrc = ctrl[0];
	assign IF_Flush = ctrl[1];
	assign RegWrite = ctrl[2];
	assign ALURsc = ctrl[3];
	assign ALUop = ctrl[5:4];
	assign RegDst = ctrl[6];
	assign MemWrite = ctrl[7];
	assign MemRead = ctrl[8];
	assign MemtoReg = ctrl[9];
	assign Jump = ctrl[10];
	assign JumpR = ctrl[11];
	assign raWrite = ctrl[12];

	always@(*) begin
		case(inst)
			6'h0: begin//R_type
				case(funct)
					6'h8: ctrl = 13'b0110001100011;
					6'h9: ctrl = 13'b0110001100111;
					default: ctrl = 13'b0000001100100;
				endcase
			end
			6'h4: begin
				if(eq)
					ctrl = 13'b0000000011111;
				else
					ctrl = 13'b0000000011100;//beq
			end
			6'h2: ctrl = 13'b0000000000000;//j
			6'h3: ctrl = 13'b1010000000100;//jal
			6'h23: ctrl = 13'b0001100001100;//lw
			6'h2b: ctrl = 13'b0000010001000;//sw
			default: ctrl = 13'b0000000011100;//addi andi ori xori slti
		endcase
	end
//no sequential
endmodule
