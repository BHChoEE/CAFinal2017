//submodules
//==========================================================//
//                    ALU control                           //
//==========================================================//
/*  
    6 kinds of aluCtrl signal:
    add:    0010
    sub:    0110
    and:    0000
    or:     0001
    nor:    1100
    slt:    0111
*/
module aluCtrl(
        inst,
        ALUOp,
        ctrl
);
    //==== in/out reg/wire declaration ====
    input   [5:0]   inst;
    input   [1:0]   ALUOp;
    output  [3:0]   ctrl;

    wire    [1:0]   tmp;
    //==== combinational part ====
    assign tmp[0] = ALUOp[1] & inst[1];
    assign tmp[1] = inst[0] | inst[3];
    assign ctrl[3] = 1'b0;
    assign ctrl[2] = ALUOp[0] | tmp[0];
    assign ctrl[1] = (~ALUOp[1]) | (~inst[2]);
    assign ctrl[0] = ALUOp[1] & tmp[1];
endmodule

//==========================================================//
//                           ALU                            //
//==========================================================//
module alu(
    ctrl,
    x,
    y,
    zero,
    out
);
    //==== in/out reg/wire declaration ====
    input   [3:0]   ctrl;
    input   [31:0]  x, y;
    output          zero;
    output  [31:0]  out;

    reg         prev_zero;
    reg [31:0]  prev_out;
    //==== combinational part ====
    assign zero = prev_zero;
    assign out = prev_out;
    always@(*) begin
        if(ctrl == 4'b0010)
            prev_out <= x + y;
        else if(ctrl == 4'b0110)
            prev_out <= x - y;
        else if(ctrl == 4'b0000)
            prev_out <= x & y;
        else if(ctrl == 4'b0001)
            prev_out <= x | y;
        else if(ctrl == 4'b0111) begin
            if (x < y)
                prev_out <= 1;
            else
                prev_out <= 32'b0;
        end
        else if(ctrl == 4'b1100)
            prev_out <= ~(x | y);
        if(x - y == 32'b0)
	    prev_zero <= 1'b1;
	else if(x - y != 32'b0)
	    prev_zero <= 1'b0;
    end
endmodule

//==========================================================//
//                           register                       //
//==========================================================//
module register(
        clk,
	    rst_n,
        RegWrite,
        ReadReg1,
        ReadReg2,
        WriteReg,
        WriteData,
        ReadData1,
        ReadData2
);
    //==== in/out reg/wire declaration ====
    input           clk, rst_n, RegWrite;
    input   [4:0]   ReadReg1, ReadReg2, WriteReg;
    input   [31:0]  WriteData;
    output  [31:0]  ReadData1,ReadData2;
    
    reg [31:0] register [31:0];
    reg [31:0] prev_ReadData1, prev_ReadData2;
    //==== combinational part ====
    
    always@(negedge rst_n or posedge clk) begin
	//rst operation
	if(~rst_n) begin
	    register[0] <= 32'b0;
  	    register[1] <= 32'b0;
	    register[2] <= 32'b0;
	    register[3] <= 32'b0;
	    register[4] <= 32'b0;
	    register[5] <= 32'b0;
	    register[6] <= 32'b0;
	    register[7] <= 32'b0;
	    register[8] <= 32'b0;
	    register[9] <= 32'b0;
 	    register[10] <= 32'b0;
	    register[11] <= 32'b0;
	    register[12] <= 32'b0;
	    register[13] <= 32'b0;
	    register[14] <= 32'b0;
	    register[15] <= 32'b0;
	    register[16] <= 32'b0;
	    register[17] <= 32'b0;
	    register[18] <= 32'b0;
	    register[19] <= 32'b0;
 	    register[20] <= 32'b0;
	    register[21] <= 32'b0;
	    register[22] <= 32'b0;
	    register[23] <= 32'b0;
	    register[24] <= 32'b0;
	    register[25] <= 32'b0;
	    register[26] <= 32'b0;
	    register[27] <= 32'b0;
	    register[28] <= 32'b0;
	    register[29] <= 32'b0;
	    register[30] <= 32'b0;
	    register[31] <= 32'b0;
	end
	else if(rst_n) begin
		//write operation
	    if(RegWrite == 1'b1) begin
            	if(WriteReg != 5'b0)
	    register[WriteReg] <= WriteData;
            end
	end
    end

    //read operation
    assign ReadData1 = prev_ReadData1;
    assign ReadData2 = prev_ReadData2;
    always@(*) begin
        prev_ReadData1 <= register[ReadReg1];
        prev_ReadData2 <= register[ReadReg2];
    end
        
endmodule
