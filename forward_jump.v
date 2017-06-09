module forward_jump(
JumpR,
Branch,

RegJump,		
RegRs,
RegRt,

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
ForwardBA,
ForWardBB,
stallJ			
);

//input output
	
	input JumpR;
	input Branch;
	input[4:0] 	RegJump;		
	input[4:0]  RegRt;
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
	output[1:0] ForwardBA;
	output[1:0] ForwardBB;
	output 		stallJ;			
//reg & wire
	reg[1:0] ForwardJ_r;
	reg[1:0] ForwardBA_r;
	reg[1:0] ForwardBB_r;
	reg[1:0] stallJ_r;
	reg[1:0] stallB_r;
//combinatinal
	assign stallJ = (stallJ_r[0] || stallJ_r[1] ) && (JumpR || Branch );
	assign ForwardJ = ForwardJ_r;
	assign ForwardBA = ForwardBA_r;
	assign ForwardBB = ForwardBB_r;
	//stall
	always@(*) begin

		if(IDEX_RegWrite) begin
			if(IDEX_Opcode == 6'b000000 && (IDEX_RegRd == RegRt  || IDEX_RegRd == RegJump))
				stallJ_r[0] = 1'b1;
			else if(IDEX_RegRt == RegRt || IDEX_RegRt == RegJump)
				stallJ_r[0] = 1'b1;
			else
				stallJ_r[0] = 1'b0;
		end
		else begin
			stallJ_r[0] = 1'b0;
		end

		if(EXMEM_MemRead && (EXMEM_RegRd == RegJump || EXMEM_RegRd == RegRt)) begin
			stallJ_r[1] = 1'b1;
		end
		else begin
			stallJ_r[1] = 1'b0;
		end

	end
	//Forwarding
	always@(*) begin
		if(EXMEM_RegWrite && !EXMEM_MemRead && (EXMEM_RegRd == RegJump))
			ForwardJA_r = 2'b01;
		else
			ForwardJA_r = 2'b00;


		if(EXMEM_RegWrite && !EXMEM_MemRead && (EXMEM_RegRd == RegRt))
			ForwardJB_r = 2'b01;
		else
			ForwardJB_r = 2'b00;

	end
//no sequentioal
endmodule
