module HazardDetection(
	IDEX_MemRead,
    IDEX_RegRt,
    IFID_RegRs,
    IFID_RegRt,
    PCWrite,
    IFIDWrite,
    stall
);
//input output
	input IDEX_MemRead;
	input IDEX_RegRt;
	input IFID_RegRs;
	input IFID_RegRt;
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
		if(IDEX_MemRead & (IDEX_RegRt == IFID_RegRs || IDEX_RegRt == IFID_RegRt)) begin
			pcw = 1'b0;
			ifidw = 1'b0;
			st = 1'b1;
		end
		else begin
			pcw  = 1'b0;
			ifidw = 1'b0;
			st = 1'b1;
		end
	end
//no sequential part
endmodule
