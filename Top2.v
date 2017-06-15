module MIPS_Pipeline(
	i_clk,
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
	DCACHE_rdata
);

//input output
	input i_clk;
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
	input[31:0] DCACHE_rdata;
//reg wire
	//stall
	reg stall_ifid;
	reg stall_idex; 
	reg stall_memwb;
	reg stall_exmem;
	//IF
	reg[31:0] PC_r,PC_w;
	reg jump_if,taken;
	wire take;
	reg[31:0] PC_4;
	//IF
	reg[31:0] PC_4_r,PC_4_w;
	reg[31:0] inst_r,inst_w;
	reg take_r,take_w;
	//ID
	wire PCSrc,RegWrite,ALUSrc,RegDst,MemWrite,MemRead,MemtoReg,Jump,JumpR,raWrite,PCWrite,IFIDWrite,stall,stallJ,Branch,Shift;
	wire IF_Flush,Mul,Div,HI,LO;
	reg IF_Flush2;
	wire[1:0] ALUOp,ForwardJA,ForwardJB;
	reg equal;
	reg[31:0] sign_ext;
	wire[31:0] Readdata1,Readdata2;
	reg[31:0] bcomp1,bcomp2;
	reg[31:0] bjaddr;

	reg[31:0] HI_r,HI_w;
	reg[31:0] LO_r,LO_w;

	//ID
	reg RegWrite_idex_r,RegWrite_idex_w;
	reg ALUSrc_idex_r,ALUSrc_idex_w;
	reg[1:0] ALUOp_idex_r,ALUOp_idex_w;
	reg RegDst_idex_r,RegDst_idex_w;
	reg MemRead_idex_r,MemRead_idex_w;
	reg MemWrite_idex_r,MemWrite_idex_w;
	reg MemtoReg_idex_r,MemtoReg_idex_w;
	reg Jump_idex_r,Jump_idex_w;
	reg Shift_idex_r,Shift_idex_w;
	reg Mul_idex_r,Mul_idex_w;
	reg Div_idex_r,Div_idex_w;
	reg HI_idex_r,HI_idex_w;
	reg LO_idex_r,LO_idex_w;

	reg[31:0] readreg1_r,readreg1_w;
	reg[31:0] readreg2_r,readreg2_w;
	reg[31:0] sign_ext_r,sign_ext_w;

	reg[31:0] PC_4_idex_r,PC_4_idex_w;
	reg[5:0] Opcode_idex_r,Opcode_idex_w;
	reg[5:0] Funct_idex_r,Funct_idex_w;
	reg[4:0] RegRs_idex_r,RegRs_idex_w;
	reg[4:0] RegRt_idex_r,RegRt_idex_w;
	reg[4:0] RegRd_idex_r,RegRd_idex_w;
	reg[4:0] shamt_idex_r,shamt_idex_w;
	//EX

	wire[3:0] ALUctrl;
	reg[31:0] Aluin1,Aluin2,readreg1_forward,readreg2_forward;
	wire[31:0] ALUresult;
	wire[1:0] forwardA,forwardB;

	//EX
	reg[31:0] ALU2exmem;
	reg[31:0] ALUin1,ALUin2;

	reg[31:0] ALUresult_r,ALUresult_w;
	reg[31:0] readreg2_2_r,readreg2_2_w;

	wire[31:0] HI_mul,LO_mul,HI_div,LO_div;
	wire stall_div,stall_mul;

	reg MemWrite_exmem_r,MemWrite_exmem_w;
	reg MemRead_exmem_r,MemRead_exmem_w;
	reg RegWrite_exmem_r,RegWrite_exmem_w;
	reg MemtoReg_exmem_r,MemtoReg_exmem_w;

	reg[4:0] RegRd_exmem_r,RegRd_exmem_w;
	//MEM
	reg MemtoReg_memwb_r,MemtoReg_memwb_w;
	reg RegWrite_memwb_r,RegWrite_memwb_w;

	reg[31:0] readdata_r,readdata_w;
	reg[31:0] ALUresult2_r,ALUresult2_w;

	reg[4:0] RegRd_memwb_r,RegRd_memwb_w;
	//WB

	reg[31:0] WBdata;
//combinational
	assign ICACHE_ren = 1'b1;
	assign ICACHE_wen = 1'b0;
	assign ICACHE_addr = PC_r[31:2];
	assign ICACHE_wdata = 32'd0;
	assign DCACHE_ren = MemRead_exmem_r;
	assign DCACHE_wen = MemWrite_exmem_r;
	assign DCACHE_addr = ALUresult_r[31:2];
	assign DCACHE_wdata = readreg2_2_r;
	//submodule
	Control zctrl(.inst(inst_r[31-:6]),.funct(inst_r[5-:6]),.eq(equal),.PCSrc(PCSrc),.IF_Flush(IF_Flush),.RegWrite(RegWrite),.ALURsc(ALUSrc),.ALUOp(ALUOp),.RegDst(RegDst),.MemWrite(MemWrite),.MemRead(MemRead),.MemtoReg(MemtoReg),.Jump(Jump),.JumpR(JumpR),.raWrite(raWrite),.Branch(Branch),.Shift(Shift),.Mul(Mul),.Div(Div),.HI(HI),.LO(LO));	

	BranchPrd zbranchprd(.clk(i_clk),.rst(rst_n),.taken(taken),.take(take),.Branch(Branch));

	forward_jump zforwardjump(.JumpR(JumpR),.Branch(Branch),.RegJump(inst_r[25-:5]),.RegRt(inst_r[20-:5]),.IDEX_RegWrite(RegWrite_idex_r),.IDEX_RegRt(RegRt_idex_r),.IDEX_RegRd(RegRd_idex_r),.IDEX_Opcode(Opcode_idex_r),.EXMEM_RegWrite(RegWrite_exmem_r),.EXMEM_MemRead(MemRead_exmem_r),.EXMEM_RegRd(RegRd_exmem_r),.MEMWB_RegWrite(RegWrite_memwb_r),.MEMWB_RegRd(RegRd_memwb_r),.ForwardJA(ForwardJA),.ForwardJB(ForwardJB),.stallJ(stallJ));

	HazardDetection zhd(.opcode(inst_r[31-:6]),.IDEX_MemRead(MemRead_idex_r),.IDEX_RegRt(RegRt_idex_r),.IFID_RegRt(inst_r[20-:5]),.IFID_RegRs(inst_r[25-:5]),.PCWrite(PCWrite),.IFIDWrite(IFIDWrite),.stall(stall));

	register zregister(.clk(i_clk),.rst_n(rst_n),.RegWrite(RegWrite_memwb_r),.ReadReg1(inst_r[25-:5]),.ReadReg2(inst_r[20-:5]),.WriteReg(RegRd_memwb_r),.WriteData(WBdata),.ReadData1(Readdata1),.ReadData2(Readdata2));


	aluCtrl zaluCtrl(.opcode(Opcode_idex_r),.funct(Funct_idex_r),.ALUOp(ALUOp_idex_r),.ctrl(ALUctrl));

	alu zalu(.ctrl(ALUctrl),.x(ALUin1),.y(ALUin2),.out(ALUresult));

	mul zmul(i_clk,rst_n,Mul_idex_r,readreg1_forward,readreg2_forward,HI_mul,LO_mul,stall_mul);

	div zdiv(i_clk,rst_n,Div_idex_r,readreg2_forward,readreg1_forward,HI_div,LO_div,stall_div);

	Forwarding zforwarding(.IDEX_RegRt(RegRt_idex_r),.IDEX_RegRs(RegRs_idex_r),.EXMEM_RegRd(RegRd_exmem_r),.MEMWB_RegRd(RegRd_memwb_r),.EXMEM_RegWrite(RegWrite_exmem_r),.MEMWB_RegWrite(RegWrite_memwb_r),.forwardA(forwardA),.forwardB(forwardB));

//stall unit
	always@(*) begin
		stall_ifid = DCACHE_stall || ICACHE_stall || stallJ || stall_mul || stall_div;
		stall_idex = DCACHE_stall || ICACHE_stall || stall_mul || stall_div;
		stall_memwb = DCACHE_stall || ICACHE_stall;
		stall_exmem = DCACHE_stall || ICACHE_stall;
	end
//IF
	//jump
	always@(*) begin
		if(ICACHE_rdata[31:26] == 6'h2 || ICACHE_rdata[31:26] == 6'h3)
			jump_if = 1'b1;
		else
			jump_if = 1'b0;
		end
	//PC
	always@(*) begin
		PC_4 = PC_r + 32'd4;
		if(!stall_ifid && PCWrite) begin
			if(PCSrc) begin
				if(Branch && take_r && IF_Flush)
					PC_w = PC_4;
				else
					PC_w = bjaddr;
			end
			else begin
				if(Branch && take_r && !IF_Flush)
					PC_w = PC_4_r;
				else if(jump_if)
					PC_w = {{PC_4[31:28]},{ICACHE_rdata[25:0]},{2{1'b0}}};
				else if(((ICACHE_rdata[31:26] == 6'h4) || (ICACHE_rdata[31:26] == 6'h5)) && take)
					PC_w = PC_4 + {{14{1'b0}},{ICACHE_rdata[15:0]},{2{1'b0}}};
				else
					PC_w = PC_4;
			end
		end
		else begin
			PC_w = PC_r;
		end
	end

	always@(*) begin
		PC_4_w = (IFIDWrite && !stall_ifid) ? (IF_Flush2 ? 32'b0 : PC_4) : PC_4_r;
		inst_w = (IFIDWrite && !stall_ifid) ? (IF_Flush2 ? 32'b0 : ICACHE_rdata) : inst_r;
		take_w = (IFIDWrite && !stall_ifid) ? (IF_Flush2 ? 1'b0 : take) : take_r;
	end

//ID
	//control signal
	always@(*) begin
		if(!stall_mul && Mul_idex_r) begin
			HI_w = HI_mul;
			LO_w = LO_mul;
		end
		else if(!stall_div && Div_idex_r) begin
			HI_w = HI_div;
			LO_w = LO_div;
		end
		else begin
			HI_w = HI_r;
			LO_w = LO_r;
		end
		
		if(!stall_idex) begin
			RegWrite_idex_w = (stall || stallJ) ? 1'b0 : RegWrite;
			ALUSrc_idex_w = (stall || stallJ) ? 1'b0 : ALUSrc;
			ALUOp_idex_w = (stall || stallJ) ? 1'b0 : ALUOp;
			RegDst_idex_w = (stall || stallJ) ? 1'b0 : RegDst;
			MemRead_idex_w = (stall || stallJ) ? 1'b0 : MemRead;
			MemWrite_idex_w = (stall || stallJ) ? 1'b0 : MemWrite;
			MemtoReg_idex_w = (stall || stallJ) ? 1'b0 : MemtoReg;
			Jump_idex_w = (stall || stallJ) ? 1'b0 : Jump;
			Shift_idex_w = (stall || stallJ) ? 1'b0 : Shift;
			Div_idex_w = (stall || stallJ) ? 1'b0 : Div;
			Mul_idex_w = (stall || stallJ) ? 1'b0 : Mul;
			HI_idex_w = (stall || stallJ) ? 1'b0 : HI;
			LO_idex_w = (stall || stallJ) ? 1'b0 : LO;
		end
		else begin
			RegWrite_idex_w =RegWrite_idex_r;
			ALUSrc_idex_w =  ALUSrc_idex_r;
			ALUOp_idex_w =   ALUOp_idex_r ;
			RegDst_idex_w =  RegDst_idex_r;
			MemRead_idex_w = MemRead_idex_r;
			MemWrite_idex_w =MemWrite_idex_r;
			MemtoReg_idex_w =MemtoReg_idex_r;
			Jump_idex_w =    Jump_idex_r;
			Shift_idex_w = Shift_idex_r;
			Mul_idex_w = Mul_idex_r;
			Div_idex_w = Div_idex_r;
			HI_idex_w = HI_idex_r;
			LO_idex_w = LO_idex_r;
		end

		if(!stall_idex) begin
			PC_4_idex_w = PC_4_r;
			Opcode_idex_w = inst_r[31-:6];
			Funct_idex_w = inst_r[5-:6];
		
			RegRs_idex_w = inst_r[25-:5];
			RegRt_idex_w = raWrite ? 5'd31 : inst_r[20-:5];
			RegRd_idex_w = inst_r[15-:5];
			shamt_idex_w = inst_r[10-:5];
		end
		else begin
			PC_4_idex_w = PC_4_idex_r;
			Opcode_idex_w = Opcode_idex_r;
			Funct_idex_w = Funct_idex_r;
		                               
			RegRs_idex_w = RegRs_idex_r;
			RegRt_idex_w = RegRt_idex_r;
			RegRd_idex_w = RegRd_idex_r;
			shamt_idex_w = shamt_idex_r;
		end
	end

	always@(*) begin
		if(!stall_idex) begin
			readreg1_w = Readdata1;
			readreg2_w = Readdata2;
			sign_ext_w = sign_ext;
		end
		else begin
			readreg1_w = readreg1_r;
			readreg2_w = readreg2_r;
			sign_ext_w = sign_ext_r;
		end
	end

	//address for beq/jr/jrlu
	always@(*) begin
		sign_ext = {{16{{inst_r[15]}}},{inst_r[15:0]}};
		if(JumpR) begin
			case(ForwardJA)
				2'b01: bjaddr = ALUresult_r;
				2'b10: bjaddr = WBdata;
				default: bjaddr = Readdata1;
			endcase
		end
		else begin
			bjaddr = (sign_ext << 2) + PC_4_r;
		end
	end
	//equal for Branch
	always@(*) begin
		case(ForwardJA)
			2'b01: bcomp1 = ALUresult_r;
			2'b10: bcomp1 = WBdata;
			default: bcomp1 = Readdata1;
		endcase

		case(ForwardJB)
			2'b01: bcomp2 = ALUresult_r;
			2'b10: bcomp2 = WBdata;
			default: bcomp2 = Readdata2;
		endcase

		if( bcomp1 == bcomp2)
			equal = 1'b1;
		else
			equal = 1'b0;

		taken = Branch && IF_Flush;
		IF_Flush2 = (IF_Flush && !Branch) || (Branch && !take_r && IF_Flush) || (Branch && take_r && !IF_Flush);
	end
//EX
	//control signal
	always@(*) begin
		if(!stall_exmem) begin
			MemWrite_exmem_w = (stall_mul || stall_div) ? 1'b0 : MemWrite_idex_r;
			MemRead_exmem_w = (stall_mul || stall_div) ? 1'b0 : MemRead_idex_r;
			RegWrite_exmem_w = (stall_mul || stall_div) ? 1'b0 : RegWrite_idex_r;
			MemtoReg_exmem_w = (stall_mul || stall_div) ? 1'b0 : MemtoReg_idex_r;
			RegRd_exmem_w = (stall_mul || stall_div) ? 1'b0 : (RegDst_idex_r ? RegRd_idex_r : RegRt_idex_r);
		end
		else begin
			MemWrite_exmem_w =MemWrite_exmem_r;
			MemRead_exmem_w = MemRead_exmem_r;
			RegWrite_exmem_w =RegWrite_exmem_r;
			MemtoReg_exmem_w =MemtoReg_exmem_r;
			RegRd_exmem_w =   RegRd_exmem_r;
		end
	end
	always@(*) begin
		ALUresult_w = stall_exmem? ALUresult_r : ALU2exmem;
		readreg2_2_w = stall_exmem? readreg2_2_r : readreg2_forward;
	end

	//ALUin determination (forwarding)
	always@(*) begin
		case(forwardA)
			2'b00: readreg1_forward = readreg1_r;
			2'b10: readreg1_forward = ALUresult_r;
			default: readreg1_forward = WBdata;
		endcase

		case(forwardB)
			2'b00: readreg2_forward = readreg2_r;
			2'b10: readreg2_forward = ALUresult_r;
			default: readreg2_forward = WBdata;
		endcase

		if(Shift_idex_r)
			ALUin1 = {{27{1'b0}},{shamt_idex_r}};
		else if(HI_idex_r)
			ALUin1 = HI_r;
		else if(LO_idex_r)
			ALUin1 = LO_r;
		else
			ALUin1 = readreg1_forward;

		if(ALUSrc_idex_r)
			ALUin2 = sign_ext_r;
		else
			ALUin2 = readreg2_forward;

	end
	//mux for jal/jalr
	always@(*) begin
		if(Jump_idex_r)
			ALU2exmem = PC_4_idex_r;
		else
			ALU2exmem = ALUresult;
	end


//MEM
	always@(*) begin
		if(stall_memwb) begin
			MemtoReg_memwb_w = MemtoReg_memwb_r;
            RegWrite_memwb_w = RegWrite_memwb_r;
			RegRd_memwb_w =    RegRd_memwb_r; 
		end
		else begin
			MemtoReg_memwb_w = MemtoReg_exmem_r;
            RegWrite_memwb_w = RegWrite_exmem_r;
			RegRd_memwb_w =    RegRd_exmem_r;
		end
	end
	always@(*) begin
		readdata_w = stall_memwb? readdata_r : DCACHE_rdata;
		ALUresult2_w = stall_memwb? ALUresult2_r : ALUresult_r;
	end

//WB
	always@(*) begin
		WBdata = MemtoReg_memwb_r ? readdata_r : ALUresult2_r; 
	end
//sequential
	always@(posedge i_clk or negedge rst_n) begin
		if(!rst_n) begin
			PC_r <= 32'b0;
			
			PC_4_r <= 32'b0;
			inst_r <= 32'b0;
			take_r <= 1'b0;

			HI_r <= 32'd0;
			LO_r <= 32'd0;

			readreg1_r <= 32'b0;
			readreg2_r <= 32'b0;
			sign_ext_r <= 32'b0;
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
			shamt_idex_r <= 5'd0;
			Jump_idex_r <= 1'b0;
			Shift_idex_r <= 1'b0;
			Div_idex_r <= 1'b0;
			Mul_idex_r <= 1'b0;
			HI_idex_r <= 1'b0;
			LO_idex_r <= 1'b0;
			PC_4_idex_r <= 31'd0;
			Opcode_idex_r <= 6'd0;
			Funct_idex_r <= 6'd0;

			ALUresult_r <= 32'b0;
			readreg2_2_r <= 32'b0;
			MemWrite_exmem_r <= 1'd0;
            MemRead_exmem_r <= 1'd0;
            RegWrite_exmem_r <= 1'd0;
            MemtoReg_exmem_r <= 1'd0;
			RegRd_exmem_r <= 5'd0;

			readdata_r <= 32'b0;
			ALUresult2_r <= 32'b0;
			MemtoReg_memwb_r <= 1'd0;
            RegWrite_memwb_r <= 1'd0;
			RegRd_memwb_r <= 5'd0;
		end
		else begin
			PC_r <= PC_w;

			PC_4_r <= PC_4_w;
			inst_r <= inst_w;
			take_r <= take_w;

			HI_r <= HI_w;
			LO_r <= LO_w;

			readreg1_r <= readreg1_w;
			readreg2_r <= readreg2_w; 
			sign_ext_r <= sign_ext_w; 
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
			shamt_idex_r <= shamt_idex_w;
			PC_4_idex_r <= PC_4_idex_w;
			Jump_idex_r <= Jump_idex_w;
			Shift_idex_r <= Shift_idex_w;
			Div_idex_r <= Div_idex_w;
			Mul_idex_r <= Mul_idex_w;
			HI_idex_r <= HI_idex_w;
			LO_idex_r <= LO_idex_w;
			Opcode_idex_r <= Opcode_idex_w;
			Funct_idex_r <= Funct_idex_w;

			ALUresult_r <= ALUresult_w;
			readreg2_2_r <= readreg2_2_w;
			MemWrite_exmem_r <= MemWrite_exmem_w;
            MemRead_exmem_r <= MemRead_exmem_w;
            RegWrite_exmem_r <= RegWrite_exmem_w;
            MemtoReg_exmem_r <= MemtoReg_exmem_w;
			RegRd_exmem_r <= RegRd_exmem_w;

			readdata_r <= readdata_w;
			ALUresult2_r <= ALUresult2_w;
			MemtoReg_memwb_r <= MemtoReg_memwb_w;
            RegWrite_memwb_r <= RegWrite_memwb_w;
			RegRd_memwb_r <= RegRd_memwb_w;
		end
	end
endmodule
