module MIPS_Pipeline(
	clk,
	rst_n,
	
	ICACHE_ren,
	ICACHE_wen,
	ICACHE_addr,
	ICACHE_wdata,
	ICACHE_stall,
	ICACHE_rdata,

	DCACHE_ren,
	DCACHE_wen,
	DCACHE_addr,
	DCACHE_wdata,
	DCACHE_stall,
	DCACHE_rddata
);

//input output
	input clk;
	input rst_n;

	output ICACHE_ren;
	output ICACHE_wen;
	output[29:0] ICACHE_addr;
	output[31:0] ICACHE_wdata;
	input ICACHE_stall;
	input[31:0] ICACHE_rdata;

	output DCACHE_ren;
	output DCACHE_wen;
	output[29:0] DCACHE_addr;
	output[31:0] DCACHE_wdata;
	input DCACHE_stall;
	input[31:0] DCAHCE_rdata;
//reg wire
	//stall
	reg stall_ifid;
	reg stall_idex; 
	reg stall_memwb;
	reg stall_exmem;
	//IF
	reg[31:0] PC_r,PC_w;
	reg jump_if;
	reg[31:0] PC_4;
	//IF
	//ID
	wire PCSrc,IF_Flush,RegWrite,ALURsc,RegDst,MemWrite,MemRead,MemtoReg,Jump,JumpR,raWrite,PCWrite,IFIDWrite,stall,stallJ;
	wire[1:0] ALUOp,ForwardJ;
	reg equal;
	wire[31:0] next_PC_4;
	wire[31:0] next_inst;
	reg[31:0] sign_ext;
	wire[31:0] Readdata1,Readdata2;
	reg[31:0] bjaddr;

	//ID
	reg RegWrite_idex_r,RegWrite_idex_w;
	reg ALUSrc_idex_r,ALUSrc_idex_w;
	reg[1:0] ALUOp_idex_r,ALUOp_idex_w;
	reg RegDst_idex_r,RegDst_idex_w;
	reg MemRead_idex_r,MemRead_idex_w;
	reg MemWrite_idex_r,MemWrite_idex_w;
	reg MemtoReg_idex_r,MemtoReg_idex_w;
	reg Jump_idex_r,Jump_idex_w;

	reg[31:0] PC_4_idex_r,PC_4_idex_w;
	reg[5:0] Opcode_idex_r,Opcode_idex_w;
	reg[5:0] Funct_idex_r,Funct_idex_w;
	reg[4:0] RegRs_idex_r,RegRs_idex_w;
	reg[4:0] RegRt_idex_r,RegRt_idex_w;
	reg[4:0] RegRd_idex_r,RegRd_idex_w;
	//EX

	wire[31:0] next_readreg1,next_readreg2,next_sign_ext;
	wire[3:0] ALUctrl;
	reg[31:0] Aluin1,Aluin2,readreg_forward;
	wire[31:0] ALUresult;
	wire[1:0] forwardA,forwardB;
	//EX
	reg[31:0] next_ALUresult;
	wire[31:0] next_readreg2_2;

	reg MemWrite_exmem_r,MemWrite_exmem_w;
	reg MemRead_exmem_r,MemRead_exmem_w;
	reg RegWrite_exmem_r,RegWrite_exmem_w;
	reg MemtoReg_exmem_r,MemtoReg_exmem_w;

	reg[4:0] RegRd_exmem_r,RegRd_exmem_w;
	//MEM
	wire[31:0] next_readdata,next_ALUresult2;
	reg MemtoReg_memwb_r,MemtoReg_memwb_w;
	reg RegWrite_memwb_r,RegWrite_memwb_w;

	reg[4:0] RegRd_memwb_r,RegRd_memwb_w;
	//WB

	reg[31:0] WBdata;
//combinational
	assign ICACHE_re = 1'b1;
	assign ICACHE_we = 1'b0;
	assign ICACHE_addr = PC_r[31:2];
	assign ICACHE_wdata = 32'd0;
	assign DCACHE_re = MemRead_exmem_r;
	assign DCACHE_we = MemWrite_exmem_r;
	assign DCACHE_addr = next_readreg2_2[31:2];
	assign DCACHE_wdata = next_ALUresult;
	//submodule
	IF_ID_reg zifidreg(.clk(clk),.rst(rst_n),.PC_4(PC_4),.inst(ICAHCE_rdata),.next_PC_4(next_PC_4),.next_inst(next_inst),.IF_Flush(IF_Flush),.IFIDWrite(IFIDWRite),.proc_stall(stall_ifid));

	Control zctrl(.inst(next_inst[31:26]),.funct(next_inst[5:0]),.eq(equal),.PCSrc(PCSrc),.IF_Flush(IF_Flush),.RegWrite(RegWrite),.ALURsc(ALURsc),.ALUOp(ALUOp),.RegDst(RegDst),.MemWrite(MemWrite),.MemRead(MemRead),.MemtoReg(MemtoReg),.Jump(Jump),.JunmpR(JunmpR),.raWrite(raWrite));	

	forward_jump zforwardjump(.RegJump(next_inst[25:21]),.IDEX_RegWrite(RegWrite_idex_r),.IDEX_RegRt(RegRt_idex_r),.IDEX_RegRd(RegRd_idex_r),.IDEX_Opcode(Opcode_idex_r),.EXMEM_RegWrite(RegWrite_exmem_r),.EXMEM_MemRead(MemRead_exmem_r),.EXMEM_RegRd(RegRd_exmem_r),.MEMWB_RegWrite(RegWrite_memwb_r),.MEMWB_RegRd(RegRd_memwb_r),.ForwardJ(ForwardJ),.stallJ(stallJ));

	HazardDetection zhd(.opcode(next_inst[31:26]),.IDEX_MemRead(MemRead_idex_r),.IDEX_RegRt(RegRt_idex_r),.IFID_RegRt(next_inst[20:16]),.IFID_RegRs(next_inst[25:21]),.PCWrite(PCWrite),.IFIDWrite(IFIDWrite),.stall(stall));

	register zregister(.clk(clk),.rst_n(rst),.RegWrite(RegWrite_memwb_r),.ReadReg1(next_inst[25:21]),.ReadReg2(20:16),.WriteReg(RegRd_memwb_r),.WriteData(WBData),.Readdata1(Readdata1),.Readdata2(Readdata2));

	ID_EX_reg zidexreg(.clk(clk),.rst(rst),.readreg1(Readdata1),.readreg2(Readdata2),.sign_ext(sign_ext),.next_readreg1(next_readreg1),.next_readreg2(next_readreg2),.next_sign_ext(next_sign_ext),.proc_stall(stall_idex));

	aluCtrl zaluCtrl(.opcode(Opcode_idex_r),.funct(Funct_idex_r),.ALUOp(ALUOp_idex_r),.ctrl(ALUctrl));

	alu zalu(.ctrl(ALUctrl),.x(ALUin1),.y(ALUin2),.out(ALUresult));

	Forwarding zforwarding(.IDEX_RegRt(RegRt_idex_r),.IDEX_RegRs(RegRs_idex_r),.EXMEM_RegRd(RegRd_exmem_r),.MEMWB_RegRd(RegRd_memwb_r),.EXMEM_RegWrite(RegWrite_exmem_r),.MEMWB_RegWrite(RegWrite_memwb_r),.forwardA(forwardA),.forwardB(forwardB));

	EX_MEM_reg zexmemreg(.clk(clk),.rst(rst),.ALUresult(ALUresult2exmem),.readreg2(readreg_forward),.next_ALUresult(next_ALUresult),.next_readreg2(next_readreg2_2),.proc_stall(stall_exem));

	MEM_WB_reg zmemwbreg(.clk(clk),.rst(rst),.readdata(mem_rdata),.ALUresult(next_ALUresult),.next_readdata(next_readdata),.next_ALUresult(next_ALUresult2),.proc_stall(stall_memwb));

//stall unit
	always@(*) begin
		stall_ifid = DCACHE_stall || ICACHE_stall || stallJ;
		stall_idex = DCACHE_stall || ICACHE_stall || stallJ;
		stall_memwb = DCACHE_stall || ICACHE_stall;
		stall_exmem = DCACHE_stall || ICACHE_stall;
	end
//IF
	//jump
	always@(*) begin
		if(instruction[31:26] == 6'h2 || instruction[31:26] == 6'h3) begin
			jump_if = 1'b1;
		else
			jump_if = 1'b0;
	end
	//PC
	always@(*) begin
		PC_4 = PC_r + 32'd4;
		if(PCWrite && !stallJ) begin
			if(PCSrc) begin
				PC_w = bjaddr;
			end
			else begin
				if(jump_if)
					PC_w = {{PC_4[31:28]},{instruction[25:0]},2{0}};
				else
					PC_w = PC_4;
			end
		end
		else begin
			PC_w = PC_r;
		end
	end
//ID
	//control signal
	always@(*) begin
		RegWrite_idex_w = (stall || stallJ) ? 1'b0 : RegWrite;
		ALUSrc_idex_w = (stall || stallJ) ? 1'b0 : ALUSrc;
		ALUOp_idex_w = (stall || stallJ) ? 1'b0 : ALUOp;
		RegDst_idex_w = (stall || stallJ) ? 1'b0 : RegDst;
		MemRead_idex_w = (stall || stallJ) ? 1'b0 : MemRead;
		MemWrite_idex_w = (stall || stallJ) ? 1'b0 : MemWrite;
		MemtoReg_idex_w = (stall || stallJ) ? 1'b0 : MemtoReg;
		Jump_idex_w = (stall || stallJ) ? 1'b0 : Jump;

		PC_4_idex_w = next_PC_4;
		Opcode_idex_w = next_inst[31:26];
		Funct_idex_w = next_inst[5:0];
	
		RegRs_idex_w = next_inst[25:21];
		RegRt_idex_w = raWrite ? 5'd31 : next_inst[20:16];
		RegRd_idex_w = next_inst[15:11];
	end
	//address for beq/jr/jrlu
	always@(*) begin
		sign_ext = {16{{next_inst[15]}},{next_inst[15:0]}};
		if(jumpR) begin
			case(ForwardJ)
				2'b01: bjaddr = next_ALUresult;
				2'b10: bjaddr = WBdata;
				default: bjaddr = Readdata1;
			endcase
		end
		else
			bjaddr = (sign_ext << 2) + PC_4;
		begin
	end
	//equal for Branch
	always@(*) begin
		if(Readdata1 == Readdata2)
			equal = 1'b1;
		else
			equal = 1'b0;
	end
//EX
	//control signal
	always@(*) begin
		MemWrite_exmem_w = MemWrite_idex_r;
		MemRead_exmem_w = MemRead_idex_r;
		RegWrite_exmem_w = RegWrite_idex_r;
		MemtoReg_exmem_w = MemtoReg_idex_r;
		RegRd_exmem_w = RegDst ? RegRd_idex_r : RegRt_idex_r;
	end
	//ALUin determination (forwarding)
	always@(*) begin
		case(forwardA) begin
			2'b00: ALUin1 = next_readreg1;
			2'b10: ALUin1 = next_ALUresult;
			default: ALUin1 = WBdata;
		endcase
		
		if(ALUSrc_idex_r) begin
			ALUin2 = next_sign_ext;
		else
			ALUin2 = readreg_forward;

		case(forwardB) begin
			2'b00: readreg_forward = next_readreg2;
			2'b10: readreg_forward = next_ALUresult;
			default: readreg_forward = WBdata;
		end
	end
	//mux for jal/jalr
	always@(*) begin
		if(Jump_idex_r)
			ALUresult2exmem = PC_4_idex_r
		else
			ALUresult2exmem = ALUresult;
	end
//MEM
//WB
	always@(*) begin
		WBdata = MemtoReg ? next_readdata: next_ALUresult2; 
	end
//sequential
	always@(posedge clk or negedge rst) begin
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
			RegRs_idex_r <= 5'd0;
            RegRt_idex_r <= 5'd0;
            RegRd_idex_r <= 5'd0;

			MemWrite_exmem_r <= 1'd0;
            MemRead_exmem_r <= 1'd0;
            RegWrite_exmem_r <= 1'd0;
            MemtoReg_exmem_r <= 1'd0;
			RegRd_exmem_r <= 5'd0;

			MemtoReg_memwb_r <= 1'd0;
            RegWrite_memwb_r <= 1'd0;
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
			RegRs_idex_r <= RegRs_idex_w;
            RegRt_idex_r <= RegRt_idex_w;
            RegRd_idex_r <= RegRd_idex_w;

			MemWrite_exmem_r <= MemWrite_exmem_w;
            MemRead_exmem_r <= MemRead_exmem_w;
            RegWrite_exmem_r <= RegWrite_exmem_w;
            MemtoReg_exmem_r <= MemtoReg_exmem_w;
			RegRd_exmem_r <= RegRd_exmem_w;

			MemtoReg_memwb_r <= MemtoReg_memwb_w;
            RegWrite_memwb_r <= RegWrite_memwb_w;
			RegRd_memwb_r <= RegRd_memwb_w;
		end
	end
endmodule
