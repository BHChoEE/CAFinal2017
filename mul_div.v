module mul(
    clk,
    rst,
    mul_iter,
    multiplicand,
    HI,
    LO,
    next_HI,
    next_LO,
    mul_stall,
);
//=================== in / out declaration ===================
    input               clk;
    input               rst;
    input       [4:0]   mul_iter;
    input       [31:0]  multiplicand;
    input       [31:0]  HI;
    input       [31:0]  LO;
    output      [31:0]  next_HI;
    output      [31:0]  next_LO;
    output              mul_stall;

//=================== reg / wire declaration =================
    //wire            add_sign;
    wire     [31:0]  HI_w;
    wire     [31:0]  LO_w;

//=================== combinational part =====================
    //assign add_sign = (mul_iter == 5'b11111) ? 1'b1: 1'b0;
    always@(*)begin
        //if last iter
        if(mul_iter == 5'd31) begin
            HI_w = HI + multiplicand;
            LO_w = LO;
        end
        //if first 31th iter
        else begin
            HI_w = HI - multiplicand;
            LO_w = LO;
        end
        //shift right product(HI, LO) 
        next_LO = LO_w >> 1'b1;
        next_HI = HI_w >> 1'b1;
        next_LO[31] = HI_w[0];
        //check if done
        if(mul_iter == 5'd31)
            mul_stall = 1'b0;
        else
            mul_stall = 1'b1;
    end

//=================== sequential part ========================
    
endmodule

module div(
    clk,
    rst,
    div_iter,
    divisor,
    HI,
    LO,
    next_HI,
    next_LO,
    div_stall
);
//=================== in / out declaration ===================
    input           clk;
    input           rst;
    input   [4:0]   div_iter;
    input   [31:0]  divisor;
    input   [31:0]  HI;//remainder
    input   [31:0]  LO;//quotient
    output  [31:0]  next_HI;//remainder
    output  [31:0]  next_LO;//quotient
    output          div_stall;

//=================== reg / wire declaration =================
    wire    [31:0]  diff;
    wire    [31:0]  HI_w;
    wire    [31:0]  LO_w;

//=================== combinational part =====================
    always@(*)begin
        //shift(HI, LO) left
        LO_w = LO << 1'b1;
        HI_w = HI << 1'b1;
        HI_w[0] = LO[31];
        //difference = remainder - divisor
        diff = HI_w - divisor;
        //if differnce >= 0
        if(diff[31] == 1'b0) begin
            //remainder = difference
            next_HI = diff;
            //set lsb of quotient = 1
            next_LO = LO_w | 32'd1;
        end
        //check if done
        if(div_iter == 5'd31)
            div_stall = 1'b0;
        else
            div_stall = 1'b1;
    end
//=================== sequential part ========================

endmodule

