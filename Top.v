module Top(
	clk,
	rst,
	PC,
	instruction,
	mem_addr,
	mem_read,
	mem_write,
	mem_ready
	mem_rdata,
	mem_wdata
);

//input output
	input clk;
	input rst;
	input[31:0] instruction;
	input[31:0] mem_rdata;
	input mem_ready;
	output[31:0] PC;
	output[31:0] mem_addr;
	output[31:0] mem_wdata;
	output mem_write;
	output mem_read;
//reg wire
	reg[31:0] PC_r,PC_w;

	reg jump_if;
	//IF/ID
	//ID/EX
	wire PCSrc,IF_Flush,RegWrite,ALURsc,RegDst,MemWrite,MemRead,MemtoReg,Jump,JumpR,raWrite,PCWrite,IFIDWrite,stall;
	wire[1:0] ALUOp;
	reg equal;

	reg RegWrite_idex_r,RegWrite_idex_w;
	reg ALUSrc_idex_r,ALUSrc_idex_w;
	reg[1:0] ALUOp_idex_r,ALUOp_idex_w;
	reg RegDst_idex_r,RegDst_idex_w;
	reg MemRead_idex_r,MemRead_idex_w;
	reg MemWrite_idex_r,MemWrite_idex_w;
	reg MemtoReg_idex_r,MemtoReg_idex_w;
	reg raWrite_idex_r,raWrite_idex_w;

	reg[4:0] RegRs_idex_r,RegRs_idex_w;
	reg[4:0] RegRt_idex_r,RegRt_idex_w;
	reg[4:0] RegRd_idex_r,RegRd_idex_w;
	//EX//MEM
	reg MemWrite_exmem_r,MemWrite_exmem_w;
	reg MemRead_exmem_r,MemRead_exmem_w;
	reg RegWrite_exmem_r,RegWrite_exmem_w;
	reg MemtoReg_exmem_r,MemtoReg_exmem_w;
	reg raWrite_exmem_r,raWrite_exmem_w;

	reg[4:0] RegRd_exmem_r,RegRd_exmem_w;
	//MEM/WB
	reg MemtoReg_memwb_r,MemtoReg_memwb_w;
	reg RegWrite_memwb_r,RegWrite_memwb_w;
	reg raWrite_memwb_r,raWrite_memwb_w;

	reg[4:0] RegRd_memwb_r,RegRd_memwb_w;
//combinational
	//submodule
	Control zctrl(.inst(inst_r[31:26]),.funct(inst_r[5:0]),.eq(equal),.PCSrc(PCSrc),.IF_Flush(IF_Flush),.RegWrite(RegWrite),.ALURsc(ALURsc),.ALUOp(ALUOp),.RegDst(RegDst),.MemWrite(MemWrite),.MemRead(MemRead),.MemtoReg(MemtoReg),.Jump(Jump),.JunmpR(JunmpR),.raWrite(raWrite));	

	HazardDetection zhd(.IDEX_MemRead(MemRead_idex_r),.IDEX_RegRt(RegDst_idex_r),.IFID_RegRt(inst_r[20:16]),.IFID_RegRs(inst_r[25:21]),.PCWrite(PCWrite),.IFIDWrite(IFIDWrite),.stall(stall));

	reg[31:0] PC_4;
	IF_ID_reg zifidreg(.clk(clk),.rst(rst),.PC_4(PC_4),.inst(instruction),.next_PC_4(),.next_inst());
	ID_EX_reg zidexreg(.clk(clk),.rst(rst),.readreg1(),.readreg2(),.sign_ext(),.next_readreg1(),.next_readreg2(),.next_sign_ext());
	EX_MEM_reg zexmemreg(.clk(clk),.rst(rst),.ALUresult(),.readreg2(),.next_ALUresult(),.next_readreg2());
	MEM_WB_reg zmemwbreg(.clk(clk),.rst(rst),.readdata(),.ALUresult(),.next_readdata(),.next_ALUresult());

	register zregister(.clk(clk),.rst_n(rst),.RegWrite(),.ReadReg1(),.ReadReg2(),.WriteReg(),.WriteData(),.Readdata1(),.Readdata2());
	aluCtrl zaluCtrl(.inst(),.ALUOp,.ctrl());
	alu zalu(.ctrl(),.x(),.y(),.zero(),.out());

//IF
	//jump
	always@(*) begin
		if(instruction[31:26] == 6'h2 || instruction[31:26] == 6'h2) begin
			jump_if = 1'b1;
		else
			jump_if = 1'b0;
	end
	//PC
	always@(*) begin
		PC_4 = PC_r + 32'd4;
		if(PCSrc) begin
			PC_w = ;
		end
		else begin
			if(jump_if)
				PC_w = {6{0},instruction[25:0]};
			else
				PC_w = PC_4;
		end
	end
//ID
	always@(*) begin
		
	end
	//equal for Branch
	always@(*) begin
		if(Readdata1 == Readdata2)
			equal = 1'b1;
		else
			equal = 1'b0;
	end
//sequential
	always@(*) begin
		if(!i_rst) begin
			PC_r <= 32'b0;
			PC_4_r <= 32'b0;
			inst_r <= 32'b0;

			RegWrite_idex_r <= 1'd0;
			ALUSrc_idex_r <= 1'd0;
			ALUOp_idex_r <= 2'd0;
			RegDst_idex_r <= 1'd0;
			MemRead_idex_r <= 1'd0;
			MemWrite_idex_r <= 1'd0;
			MemtoReg_idex_r <= 1'd0;
			raWrite_idex_r <= 1'd0;
			RegRs_idex_r <= 5'd0;
            RegRt_idex_r <= 5'd0;
            RegRd_idex_r <= 5'd0;

			MemWrite_exmem_r <= 1'd0;
            MemRead_exmem_r <= 1'd0;
            RegWrite_exmem_r <= 1'd0;
            MemtoReg_exmem_r <= 1'd0;
            raWrite_exmem_r <= 1'd0;
			RegRd_exmem_r <= 5'd0;

			MemtoReg_memwb_r <= 1'd0;
            RegWrite_memwb_r <= 1'd0;
            raWrite_memwb_r <= 1'd0;
			RegRd_memwb_r <= 5'd0;
		end
		else begin
			PC_r <= PC_w;
			PC_4_r <= PC_4_w;
			inst_r <= inst_w;

			RegWrite_idex_r <= RegWrite_idex_w;
			ALUSrc_idex_r <= ALUSrc_idex_w;
			ALUOp_idex_r <= ALUOp_idex_w;
			RegDst_idex_r <= RegDst_idex_w;
			MemRead_idex_r <= MemRead_idex_w;
			MemWrite_idex_r <= MemWrite_idex_w;
			MemtoReg_idex_r <= MemtoReg_idex_w;
			raWrite_idex_r <= raWrite_idex_w;
			RegRs_idex_r <= RegRs_idex_w;
            RegRt_idex_r <= RegRt_idex_w;
            RegRd_idex_r <= RegRd_idex_w;

			MemWrite_exmem_r <= MemWrite_exmem_w;
            MemRead_exmem_r <= MemRead_exmem_w;
            RegWrite_exmem_r <= RegWrite_exmem_w;
            MemtoReg_exmem_r <= MemtoReg_exmem_w;
            raWrite_exmem_r <= raWrite_exmem_w;
			RegRd_exmem_r <= RegRd_exmem_w;

			MemtoReg_memwb_r <= MemtoReg_memwb_w;
            RegWrite_memwb_r <= RegWrite_memwb_w;
            raWrite_memwb_r <= raWrite_memwb_w;
			RegRd_memwb_r <= RegRd_memwb_w;
		end
	end
endmodule
