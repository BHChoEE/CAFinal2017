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


//==========================================================//
//                    FF between stages                     //
//==========================================================//
module IF_ID_reg(
    clk,
    rst,
    PC_4,
    inst,
    next_PC_4,
    next_inst
);
    //========= in/ out declaration =============
    input             clk;
    input             rst;
    input   [31:0]    PC_4;
    input   [31:0]    inst;
    output  [31:0]    next_PC_4;
    output  [31:0]    next_inst;

    //========= wire/reg declaration ============
    reg     [31:0]    PC_4_reg;
    reg     [31:0]    inst_reg;

    //========= combinational part ==============
    assign next_PC_4 = PC_4_reg;
    assign next_inst = inst_reg;

    //========= sequential part =================
    always@(posedge clk or negedge rst) begin
        if(rst == 1'b1) begin
            PC_4_reg <= 32'b0;
            inst <= 32'b0;
        end
        else begin
            PC_4_reg <= PC_4;
            inst_reg <= inst;
        end
    end
endmodule

module ID_EX_reg(
    clk,
    rst,
    readreg1,
    readreg2,
    sign_ext,
    inst20_16,
    inst15_11,
    next_readreg1,
    next_readreg2,
    next_sign_ext,
    next_inst20_16,
    next_inst15_11
);
    //============== in / out declaration =======
    input               clk;
    input               rst;
    input   [31:0]      readreg1;
    input   [31:0]      readreg2;
    input   [31:0]      sign_ext;
    input   [4:0]       inst20_16;
    input   [4:0]       inst15_11;
    output  [31:0]      next_readreg1;
    output  [31:0]      next_readreg2;
    output  [31:0]      next_sign_ext;
    output  [4:0]       next_inst20_16;
    output  [4:0]       next_inst15_11;

    //=========== reg / wire declaration =========
    reg     [31:0]      readreg1_reg;
    reg     [31:0]      readreg2_reg;
    reg     [31:0]      sign_ext_reg;
    reg     [4:0]       inst20_16_reg;
    reg     [4:0]       inst15_11_reg;

    //=========== combinational part =============
    assign next_readreg1 = readreg1_reg;
    assign next_readreg2 = readreg2_reg;
    assign next_sign_ext = sign_ext_reg;
    assign next_inst20_16 = inst20_16_reg;
    assign next_inst15_11 = inst15_11_reg;

    //=========== sequential part ================
    always@(posedge rst or negedge clk) begin
        if(rst == 1'b1)begin
            readreg1_reg <= 32'b0;
            readreg2_reg <= 32'b0;
            sign_ext_reg <= 32'b0;
            inst20_16_reg <= 5'b0;
            inst15_11_reg <= 5'b0;
        end
        else begin
            readreg1_reg <= readreg1;
            readreg2_reg <= readreg2;
            sign_ext_reg <= sign_ext;
            inst15_11_reg <= inst15_11;
            inst20_16_reg <= inst20_16;
    end
endmodule

module EX_MEM_reg(
    clk,
    rst,
    ALUresult,
    readreg2,
    addresult,
    zero,
    instDst,
    next_ALUresult,
    next_readreg2,
    next_addresult,
    next_zero,
    next_instDst
);
    //============ in / out declaration =========
    input               clk;
    input               rst;
    input   [31:0]      ALUreslut;
    input   [31:0]      readreg2;
    input   [31:0]      addresult;
    input               zero;
    input   [4:0]       instDst;
    output  [31:0]      next_ALUresult;
    output  [31:0]      next_readreg2;
    output  [31:0]      next_addresult;
    output              next_zero;
    output  [4:0]       next_instDst;

    //========= reg / wire declaration ==========
    reg     [31:0]      ALUresult_reg;
    reg     [31:0]      readreg2_reg;
    reg     [31:0]      addresult_reg;
    reg                 zero_reg;
    reg     [5:0]       instDst_reg;

    //============ combinational part ===========
    assign next_ALUresult = ALUresult_reg;
    assign next_readreg2 = readreg2_reg;
    assign next_addresult = addresult_reg;
    assign next_zero = zero_reg;
    assign next_instDst = instDst_reg;

    //============ sequential part ==============
    always@(posedge clk or negedge rst) begin
        if(rst == 1'b1) begin
            ALUresult_reg <= 32'b0;
            readreg2_reg <= 32'b0;
            addresult_reg <= 32'b0;
            zero_reg <= 1'b0;
            instDst_reg <= 5'b0;
        end
        else begin
            ALUresult_reg <= ALUresult;
            readreg2_reg <= readreg2;
            addresult_reg <= addresult;
            zero_reg <= zero;
            instDst_reg <= instDst;
        end
    end
endmodule

module MEM_WB_reg(
    clk,
    rst,
    readdata,
    ALUreslut,
    instDst,
    next_readdata,
    next_ALUresult,
    next_instDst
);
    //============ in / out declaration ===========
    input               clk;
    input               rst;
    input   [31:0]      readdata;
    input   [31:0]      ALUresult;
    input   [4:0]       instDst;
    output  [31:0]      next_readdata;
    output  [31:0]      next_ALUresult;
    output  [4:0]       next_instDst;

    //========== reg / wire declaration ===========
    reg     [31:0]      readdata_reg;
    reg     [31:0]      ALUresult_reg;

    //============ combinational part =============
    assign next_readdata = readdata;
    assign next_readreg2 = readreg2;

    //============ sequential part ================
    always@(negedge rst or posedge clk) begin
        if(rst == 1'b1) begin
            readdata_reg <= 32'b0;
            ALUresult_reg <= 32'b0;
            instDst_reg <= 5'b0;
        end
        else begin
            readdata_reg <= readdata;
            ALUresult_reg <= ALUresult;
            instDst_reg <= instDst;
        end
    end
endmodule