//submodules
//==========================================================//
//                    ALU control                           //
//==========================================================//
/*  
    11 kinds of aluCtrl signal:
    add:    0010
    sub:    0110
    and:    0000
    or:     0001
    xor:    0011
    nor:    0100
    slt:    0111
    sll:    0101
    sra:    1000
    srl:    1001
    nop:    1111
*/
module aluCtrl(
        opcode,
        funct,
        ALUOp,
        ctrl
);
    //============== in/out declaration ===============
    input       [5:0]   opcode;
    input       [5:0]   funct;
    input       [1:0]   ALUOp;
    output reg  [3:0]   ctrl;

    //============== wire/ reg/ declaration ===========
    wire    [5:0]   temp;

    //============== combinational part ===============
    //to choose which funct to use I / R type
    assign temp = (ALUOp == 2'b10)? funct : opcode;
    always@(*)begin
        //if the inst. is R-type
        if(ALUOp == 2'b10) begin
            //ADD
            if(temp == 6'b100000)
                ctrl = 4'b0010;
            //SUB
            else if(temp == 6'b100010)
                ctrl = 4'b0110;
            //AND
            else if(temp == 6'b100100)
                ctrl = 4'b0000;
            //OR
            else if(temp == 6'b100101)
                ctrl = 4'b0001;
            //XOR
            else if(temp == 6'b100110)
                ctrl = 4'b0011;
            //NOR
            else if(temp == 6'b100111)
                ctrl = 4'b0100;
            //SLT
            else if(temp == 6'b101010)
                ctrl = 4'b0111;
            //SLL
            else if(temp == 6'b000000)
                ctrl = 4'b0101;
            //SRA
            else if(temp == 6'b000011)
                ctrl = 4'b1000;
            //SRL
            else if(temp == 6'b000010)
                ctrl = 4'b1001;
            //NOP
            else 
                ctrl = 4'b1111;
        end
        //if the inst. is I-type
        else if(ALUOp == 2'b01) begin
            //LW (add)
            if(temp == 6'b100011)
                ctrl = 4'b0010;
            //SW (add)
            else if(temp == 6'b101011)
                ctrl = 4'b0010;
            //ADDI (add)
            else if(temp == 6'b001000)
                ctrl = 4'b0010;
            //ANDI (and)
            else if(temp == 6'b001100)
                ctrl = 4'b0000;
            //ORI (or)
            else if(temp == 6'b001101)
                ctrl = 4'b0001;
            //XORI (xor)
            else if(temp == 6'b001110)
                ctrl = 4'b0011;
            //SLTI (slt)
            else if(temp == 6'b001010)
                ctrl = 4'b0111;
            //NOP
            else
                ctrl = 4'b1111;
        end
        //NOP
        else begin
            ctrl = 4'b1111;
        end
    end
endmodule
    //=============== sequential part ================
//TODO
//==========================================================//
//                           ALU                            //
//==========================================================//
/*  
    11 kinds of aluCtrl signal:
    add:    0010
    sub:    0110
    and:    0000
    or:     0001
    xor:    0011
    nor:    0100
    slt:    0111
    sll:    0101
    sra:    1000
    srl:    1001
    nop:    1111
*/
module alu(
    ctrl,
    x,
    y,
    out
);
    //================== in/out declaration ==================
    input       [3:0]   ctrl;
    input       [31:0]  x, y;
    output reg  [31:0]  out;
    //============== reg / wire declaration ==================

    //================== combinational part ==================
    always@(*) begin
        //    add:    0010
        if(ctrl == 4'b0010)
            out = x + y;
        //    sub:    0110
        else if(ctrl == 4'b0110)
            out = x - y;
        //    and:    0000
        else if(ctrl == 4'b0000)
            out = x & y;
        //    or:     0001
        else if(ctrl == 4'b0001)
            out = x | y;
        //    xor:    0011
        else if(ctrl == 4'b0011)
            out = x ^ y;
        //    nor:    0100
        else if(ctrl == 4'b0100)
            out = ~(x | y);
        //    slt:    0111
        else if(ctrl == 4'b0111) begin
            if (x < y)
                out = 1;
            else
                out = 32'b0;
        end
        //    sll:    0101
        else if(ctrl == 4'b0101)
            out = x << y;
        //    sra:    1000
        else if(ctrl == 4'b1000)
            out = x >>> y;
        //    srl:    1001
        else if(ctrl == 4'b1001)
            out = x >> y;
		else
			out = 31'd0;
    end
    //================= sequential part =====================
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
    
    reg [31:0] register_r [31:0];
	reg [31:0] register_w [31:0];
    reg [31:0] prev_ReadData1, prev_ReadData2;

	integer i;
    //==== combinational part ====
    

    //read operation
    assign ReadData1 = (RegWrite && (WriteReg == ReadReg1)) ? WriteData : prev_ReadData1;
    assign ReadData2 = (RegWrite && (WriteReg == ReadReg2)) ? WriteData : prev_ReadData2;
    always@(*) begin
        prev_ReadData1 = register_r[ReadReg1];
        prev_ReadData2 = register_r[ReadReg2];
    end
	//write operation
	always@(*) begin
		register_w[0] = 32'b0;
		for(i = 1; i < 32; i = i + 1) begin
			if(RegWrite && (WriteReg == i))
				register_w[i] = WriteData;
			else
				register_w[i] = register_r[i];
		end
	end
	//sequential part
    always@(negedge rst_n or posedge clk) begin
	//rst operation
		if(~rst_n) begin
			for(i = 0; i < 32; i = i + 1) begin
				register_r[i] <= 32'b0;
			end
		end
		else begin
			for(i = 0; i < 32; i = i + 1) begin
				register_r[i] <= register_w[i];
			end
		end
    end
       
endmodule


//==========================================================//
//                    FF between stages                     //
//==========================================================//
module IF_ID_reg(
    clk,
    rst,
    IF_ID_write,
    IF_flush,
    proc_stall,
    PC_4,
    inst,
    next_PC_4,
    next_inst
);
    //========= in/ out declaration =============
    input               clk;
    input               rst;
    input               IF_ID_write;
    input               IF_flush;
    input               proc_stall;
    input       [31:0]  PC_4;
    input       [31:0]  inst;
    output reg  [31:0]  next_PC_4;
    output reg  [31:0]  next_inst;

    //========= wire/reg declaration ============

    //========= combinational part ==============
	
	wire[31:0] next_PC_4_w;
	wire[31:0] next_inst_w;

	assign next_PC_4_w = (IF_ID_write && !proc_stall)  ? ((IF_flush)? 32'b0: PC_4) : next_PC_4;
	assign next_inst_w = (IF_ID_write && !proc_stall)  ? ((IF_flush)? 32'b0: inst) : next_inst;

    //========= sequential part =================
    always@(posedge clk or negedge rst) begin
        if(!rst) begin
            next_PC_4 <= 32'b0;
            next_inst <= 32'b0;
        end
        else begin
            next_PC_4 <= next_PC_4_w;// (IF_ID_write || !proc_stall)  ? ((IF_flush)? 32'b0: PC_4) : next_PC_4;
            next_inst <= next_inst_w;//(IF_ID_write || !proc_stall)  ? ((IF_flush)? 32'b0: inst) : next_inst;
        end
    end
endmodule

module ID_EX_reg(
    clk,
    rst,
    proc_stall,
    readreg1,
    readreg2,
    sign_ext,
    next_readreg1,
    next_readreg2,
    next_sign_ext
);
    //============== in / out declaration =======
    input                   clk;
    input                   rst;
    input                   proc_stall;
    input       [31:0]      readreg1;
    input       [31:0]      readreg2;
    input       [31:0]      sign_ext;
    output reg  [31:0]      next_readreg1;
    output reg  [31:0]      next_readreg2;
    output reg  [31:0]      next_sign_ext;


    //=========== reg / wire declaration =========

    //=========== combinational part =============

    //=========== sequential part ================
    always@(posedge clk or negedge rst) begin
        if(!rst)begin
            next_readreg1 <= 32'b0;
            next_readreg2 <= 32'b0;
            next_sign_ext <= 32'b0;
        end
        else begin
            next_readreg1 <= (proc_stall) ? next_readreg1 : readreg1;
            next_readreg2 <= (proc_stall) ? next_readreg2 : readreg2;
            next_sign_ext <= (proc_stall) ? next_sign_ext : sign_ext;
        end
	end
endmodule

module EX_MEM_reg(
    clk,
    rst,
    proc_stall,
    ALUresult,
    readreg2,
    next_ALUresult,
    next_readreg2
);
    //============ in / out declaration =========
    input                   clk;
    input                   rst;
    input                   proc_stall;
    input       [31:0]      ALUresult;
    input       [31:0]      readreg2;
    output reg  [31:0]      next_ALUresult;
    output reg  [31:0]      next_readreg2;

    //========= reg / wire declaration ==========
    
    //============ combinational part ===========

    //============ sequential part ==============
    always@(posedge clk or negedge rst) begin
        if(!rst) begin
            next_ALUresult <= 32'b0;
            next_readreg2 <= 32'b0;
        end
        else begin
            next_ALUresult <= (proc_stall) ? next_ALUresult : ALUresult;
            next_readreg2 <= (proc_stall) ? next_readreg2 : readreg2;
        end
    end
endmodule

module MEM_WB_reg(
    clk,
    rst,
    proc_stall,
    readdata,
    ALUresult,
    next_readdata,
    next_ALUresult,
);
    //============ in / out declaration ===========
    input                   clk;
    input                   rst;
    input                   proc_stall;
    input       [31:0]      readdata;
    input       [31:0]      ALUresult;
    output reg  [31:0]      next_readdata;
    output reg  [31:0]      next_ALUresult;

    //========== reg / wire declaration ===========

    //============ combinational part =============

    //============ sequential part ================
    always@(negedge rst or posedge clk) begin
        if(!rst) begin
            next_readdata <= 32'b0;
            next_ALUresult <= 32'b0;
        end
        else begin
            next_readdata <= (proc_stall) ? next_readdata : readdata;
            next_ALUresult <= (proc_stall) ? next_ALUresult : ALUresult;
        end
    end
endmodule
