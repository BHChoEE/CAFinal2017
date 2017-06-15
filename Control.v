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
	Mul,
	Div,
	HI,
	LO
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
	output Mul;
	output Div;
	output HI;
	output LO;
//reg & wire
	reg[16:0] ctrl;
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
	assign Mul = ctrl[15];
	assign Div = ctrl[16];
	assign HI = inst == 6'd0 && funct == 6'd16;
	assign LO = inst == 6'd0 && funct == 6'd18;
	always@(*) begin
		case(inst)
			6'h0: begin//R_type
				case(funct)
					6'h8: ctrl = 17'b0000110001100011;
					6'h9: ctrl = 17'b0000110001100111;
					6'h0: ctrl = 17'b0100000001100100;
					6'd24: ctrl = 17'b01000000001100100;
					6'd26: ctrl = 17'b10000000001100100;
					default: ctrl = 17'b00000000001100100;
				endcase
			end
			6'h4: begin
				ctrl[16:13] = 4'b0001;
				if(eq)
					ctrl[12:0] = 13'b0000000011011;
				else
					ctrl[12:0] = 13'b0000000011000;//beq
			end
			6'h5: begin
				ctrl[16:13] = 4'b0001;
				if(!eq)
					ctrl[12:0] = 13'b0000000011011;
				else
					ctrl[12:0] = 13'b0000000011000;//bne
			end
			6'h2: ctrl = 17'b00000000000000000;//j
			6'h3: ctrl = 17'b00001010000000100;//jal
			6'h23: ctrl = 17'b00000001100011100;//lw
			6'h2b: ctrl = 17'b00000000010011000;//sw
			default: ctrl = 17'b00000000000011100;//addi andi ori xori slti
		endcase
	end
//no sequential
endmodule
