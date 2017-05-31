module Control(
	inst,
	PCSrc,
	IF_Flush,
	RegWrite,
	ALURsc,
	ALUOp,
	RegDst,
	Branch,
	MemWrite,
	MemRead,
	MemtoReg
);

//input output
	input[5:0] inst;
	output PCSrc;
	output IF_Flush;
	output RegWrite;
	output ALURsc;
	output[1:0] ALUOp;
	output RegDst;
	output Branch;
	output MemWrite;
	output MemRead;
	output MemtoReg;
//reg & wire
	reg[10:0] ctrl;
//combinational
	
	assign PCSrc = ctrl[0];
	assign IF_Flush = ctrl[1];
	assign RegWrite = ctrl[2];
	assign ALURsc = ctrl[3];
	assign ALUop = ctrl[5:4];
	assign RegDst = ctrl[6];
	assign Branch = ctrl[7];
	assign MemWrite = ctrl[8];
	assign MemRead = ctrl[9];
	assign MemtoReg = ctrl[10];

	always@(*) begin
		case(inst)
			6'd0: ctrl = 0000;
		endcase
	end
//no sequential
end module
