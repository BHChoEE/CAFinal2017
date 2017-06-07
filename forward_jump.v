module forward_jump(
JumpR,
RegJump,		
IDEX_Opcode,
                
IDEX_RegWrite,	
IDEX_RegRt,		
IDEX_RegRd,		
                
EXMEM_RegWrite,	
EXMEM_MemRead,	
EXMEM_RegRd,	
                
MEMWB_RegWrite,	
MEMWB_RegRd,	
                
ForwardJ,		
stallJ			
);

//input output
	
	input JumpR;
	input[4:0] 	RegJump;		
	input[5:0] 	IDEX_Opcode;

	input 		IDEX_RegWrite;	
	input[4:0] 	IDEX_RegRt;		
	input[4:0] 	IDEX_RegRd;		

	input 		EXMEM_RegWrite;		
	input 		EXMEM_MemRead;		
	input[4:0] 	EXMEM_RegRd;		

	input 		MEMWB_RegWrite;		
	input[4:0] 	MEMWB_RegRd;		

	output[1:0] ForwardJ;			
	output 		stallJ;			
//reg & wire
	reg[1:0] ForwardJ_r;
	reg[1:0] stallJ_r;
//combinatinal
	assign stallJ = (stallJ_r[0] || stallJ_r[1]) && JumpR;
	assign ForwardJ = ForwardJ_r;
	//stall
	always@(*) begin
		if(IDEX_RegWrite) begin
			if(IDEX_Opcode == 6'b000000 && (IDEX_RegRd == RegJump))
				stallJ_r[0] = 1'b1;
			else if(IDEX_RegRt == RegJump)
				stallJ_r[0] = 1'b1;
			else
				stallJ_r[0] = 1'b0;
		end
		else begin
			stallJ_r[0] = 1'b0;
		end

		if(EXMEM_MemRead && (EXMEM_RegRd == RegJump)) begin
			stallJ_r[1] = 1'b1;
		end
		else begin
			stallJ_r[1] = 1'b0;
		end
	end
	//Forwarding
	always@(*) begin
		if(EXMEM_RegWrite && !EXMEM_MemRead && (EXMEM_RegRd == RegJump))
			ForwardJ_r = 2'b01;
		else if(MEMWB_RegWrite && (MEMWB_RegRd == RegJump))
			ForwardJ_r = 2'b10;
		else
			ForwardJ_r = 2'b00;
	end
//no sequentioal
endmodule
