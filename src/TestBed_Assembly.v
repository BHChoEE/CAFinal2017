`timescale 1 ns/10 ps
`define	TestPort	30'h40      // r30
`define	BeginSymbol	32'h00000932
`define	EndSymbol	32'h00000D5D
`define	CheckNum	6'd33       // modify1 for number*2+1(CheckNum)

module	TestBed(
	clk,
	rst,
	addr,
	data,
	wen,
	error_num,
	duration,
	finish
);
	input			clk, rst;
	input	[29:0]	addr;
	input	[31:0]	data;
	input			wen;

	output	[7:0]	error_num;
	output	[15:0]	duration;
	output			finish;
	reg		[7:0]	error_num;
	reg		[15:0]	duration;
	reg				finish;
	
	reg		[31:0]	answer;

	reg		[1:0]	curstate;
	reg		[1:0]	nxtstate;
	reg		[5:0]	curaddr;
	reg		[5:0]	nxtaddr;
	reg		[7:0]	nxt_error_num;
	reg		[15:0]	nxtduration;
	
	always@( negedge clk) begin
		if(addr == 30'h1f5 && wen) begin
			$display("%d",data);
			error_num = 0;
			duration = 0;
			finish = 0;
		end
	end
endmodule
