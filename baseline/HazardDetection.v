module HazardDetection(
	opcode,
	IDEX_MemRead,
    IDEX_RegRt,
    IFID_RegRs,
    IFID_RegRt,
    PCWrite,
    IFIDWrite,
    stall
);
//input output
	input[5:0] opcode;
	input IDEX_MemRead;
	input[4:0] IDEX_RegRt;
	input[4:0] IFID_RegRs;
	input[4:0] IFID_RegRt;
	output PCWrite;
	output IFIDWrite;
	output stall;
//reg & wire
	reg pcw,ifidw,st;
//Combinational part
	assign PCWrite = pcw;
	assign IFIDWrite = ifidw;
	assign stall = st;

	always@(*) begin
		if(opcode == 6'd0) begin//R-Type
			if(IDEX_MemRead & (IDEX_RegRt == IFID_RegRs || IDEX_RegRt == IFID_RegRt)) begin
				pcw = 1'b0;
				ifidw = 1'b0;
				st = 1'b1;
			end
			else begin
				pcw  = 1'b1;
				ifidw = 1'b1;
				st = 1'b0;
			end
		end
		else if(opcode == 6'd2 || opcode == 6'd3) begin//J-type
			pcw  = 1'b1;
			ifidw = 1'b1;
			st = 1'b0;
		end
		else begin//I-Type
			if(IDEX_MemRead & (IDEX_RegRt == IFID_RegRs)) begin
				pcw = 1'b0;
				ifidw = 1'b0;
				st = 1'b1;
			end
			else begin
				pcw  = 1'b1;
				ifidw = 1'b1;
				st = 1'b0;
			end
		end
	end
//no sequential part
endmodule
