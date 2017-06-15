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
			//mfhi(add)
			else if(temp == 6'd16)
				ctrl = 4'b0010;
			//mflo(add)
			else if(temp == 6'd18)
				ctrl = 4'b0010;
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
            out = y << x;
        //    sra:    1000
        else if(ctrl == 4'b1000)
            out = y >>> x;
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

