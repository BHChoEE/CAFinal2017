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
	//IF/ID
	reg PC_4_r,PC_4_w;
	reg[31:0] inst_w,inst_r;
	//ID/EX
	reg RegWrite_idex_r,RegWrite_idex_w;
	reg ALUSrc_idex_r,ALUSrc_idex_w;
	reg[1:0] ALUOp_idex_r,ALUOp_idex_w;
	reg RegDst_idex_r,RegDst_idex_w;
	reg MemRead_idex_r,MemRead_idex_w;
	reg MemWrite_idex_r,MemWrite_idex_w;
	reg MemtoReg_idex_r,MemtoReg_idex_w;
	//EX//MEM
	reg MemWrite_exmem_r,MemWrite_exmem_w;
	reg MemRead_exmem_r,MemRead_exmem_w;
	reg RegWrite_exmem_r,RegWrite_exmem_w;
	reg MemtoReg_exmem_r,MemtoReg_exmem_w;
	//MEM/WB
	reg MemtoReg_memwb_r,MemtoReg_memwb_w;
	reg RegWrite_memwb_r,RegWrite_memwb_w;
//combinational
//sequential
	always@(*) begin
		if(!i_rst) begin
		end
		else begin
		end
	end
endmodule
