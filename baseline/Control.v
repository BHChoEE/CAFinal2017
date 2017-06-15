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
	raWrite,
	Branch,
	Shift,
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
	output Branch;
	output Shift;
//reg & wire
	reg[14:0] ctrl;
//combinational
	
	assign PCSrc = ctrl[0];
	assign IF_Flush = ctrl[1];
	assign RegWrite = ctrl[2];
	assign ALURsc = ctrl[3];
	assign ALUOp = ctrl[5:4];
	assign RegDst = ctrl[6];
	assign MemWrite = ctrl[7];
	assign MemRead = ctrl[8];
	assign MemtoReg = ctrl[9];
	assign Jump = ctrl[10];
	assign JumpR = ctrl[11];
	assign raWrite = ctrl[12];
	assign Branch = ctrl[13];
	assign Shift = ctrl[14];
	always@(*) begin
		case(inst)
			6'h0: begin//R_type
				case(funct)
					6'h8: ctrl = 15'b00110001100011;
					6'h9: ctrl = 15'b00110001100111;
					6'h0: ctrl = 15'b10000001100100;
					6'd24: ctrl = 15'b000000001100100;
					6'd26: ctrl = 15'b000000001100100;
					default: ctrl = 15'b000000001100100;
				endcase
			end
			6'h4: begin
				ctrl[14:13] = 2'b01;
				if(eq)
					ctrl[12:0] = 13'b0000000011011;
				else
					ctrl[12:0] = 13'b0000000011000;//beq
			end
			6'h5: begin
				ctrl[14:13] = 2'b01;
				if(!eq)
					ctrl[12:0] = 13'b0000000011011;
				else
					ctrl[12:0] = 13'b0000000011000;//bne
			end
			6'h2: ctrl = 15'b000000000000000;//j
			6'h3: ctrl = 15'b001010000000100;//jal
			6'h23: ctrl = 15'b000001100011100;//lw
			6'h2b: ctrl = 15'b000000010011000;//sw
			default: ctrl = 15'b000000000011100;//addi andi ori xori slti
		endcase
	end
//no sequential
endmodule
