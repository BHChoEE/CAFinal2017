module Top(
	clk,
	rst,
	inst_addr,
	mem_addr,
	mem_read,
	mem_write,
	mem_ready
	mem_rdata,
	mem_wdata
);

//input output
//reg wire
	reg[31:0] PC_r,PC_w;
	//IF/ID
	reg[31:0] PC_4_r,PC_4_w;
	reg[31:0] inst_w,inst_r;
	//ID/EX
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
	Control zctrl(.inst(),.funct(),.eq(),.PCSrc(),.IF_Flush(),.RegWrite(),.ALURsc(),.ALUOp(),.RegDst(),.MemWrite(),.MemRead(),.MemtoReg(),.Jump(),.JunpR(),.raWrite());	
	HazardDetection zhd(.IDEX_MemRead(),.IDEX_RegRt(),.IFID_RegRt(),.IFID_RegRs(),.PCWrite(),.IFIDWrite(),.stall());
	//
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
