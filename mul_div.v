module mul(
    clk,
    rst,
	mul,
    multiplicand,
    LO,
    next_HI,
    next_LO,
    mul_stall,
);
//=================== in / out declaration ===================
    input               clk;
    input               rst;
	input				mul;
    input       [31:0]  multiplicand;
    input       [31:0]  LO;//multiplier
    output      [31:0]  next_HI;
    output      [31:0]  next_LO;
    output              mul_stall;

//=================== reg / wire declaration =================
    //wire            add_sign;
    reg     [31:0]  HI_w,HI_r;
    reg     [31:0]  LO_w,LO_r;
	reg		[32:0]	temp;
	reg 	stall;
	reg 	[5:0]	mul_iter_r,mul_iter_w;
	reg				state_w,state_r;
//=================== combinational part =====================
    //assign add_sign = (mul_iter == 5'b11111) ? 1'b1: 1'b0;
	assign next_HI = HI_r;
	assign next_LO = LO_r;
	assign mul_stall = stall;

    always@(*)begin
        //if last iter
        if(mul_iter_r[5] == 1'b1) begin
            HI_w = 32'b0;
            LO_w = LO;
			mul_iter_w = mul ? 6'd0 : mul_iter_r;
			state_w = 1'd0;
        end
        else begin//if first 31th iter
			if(mul_iter_r[4:0] == 5'd31) begin
				temp = HI_r - (LO_r[0] ? multiplicand : 32'd0);
				state_w = 1'd1;
			end
			else begin
            	temp = HI_r + (LO_r[0] ? multiplicand : 32'd0);
				state_w = 1'd0;
			end

        	LO_w = LO_r >> 1'b1;
        	HI_w = temp[32:1];
        	LO_w[31] = temp[0];
			mul_iter_w = mul ? mul_iter_r + 6'd1 : 6'd32;
        end
        //shift right product(HI, LO) 
        //check if done
		stall = !state_r && mul;
    end

//=================== sequential part ========================
	always@(posedge clk or negedge rst) begin
		if(!rst) begin
			HI_r <= 32'd0;
			LO_r <= 32'd0;
			mul_iter_r <= 6'b100000;
			state_r <= 1'd0;
		end
		else begin
			HI_r <= HI_w;
			LO_r <= LO_w;
			mul_iter_r <= mul_iter_w;
			state_r <= state_w;
		end
	end
endmodule

module div(
    clk,
    rst,
	div,
    divisor,
    LO,
    next_HI,
    next_LO,
    div_stall
);
//=================== in / out declaration ===================
    input           clk;
    input           rst;
	input 			div;
    input   [31:0]  divisor;
    input   [31:0]  LO;//quotient
    output  [31:0]  next_HI;//remainder
    output  [31:0]  next_LO;//quotient
    output          div_stall;

//=================== reg / wire declaration =================
    reg	    [31:0]  diff;
    reg		[31:0]  HI_w,HI_r;
    reg    	[31:0]  LO_w,LO_r;
	reg		[5:0]	div_iter_w,div_iter_r;
	reg		[1:0]	sign_w,sign_r;
	reg				state_w,state_r;
	wire[31:0] divisor_p;
	wire[31:0] divident_p;

//=================== combinational part =====================
	assign next_HI = sign_r[1] ? (~HI_r + 32'd1): HI_r;
	assign next_LO = (sign_r[0] ^ sign_r[1]) ? (~LO_r + 32'd1) : LO_r;
	assign divisor_p = divisor[31] ? (~divisor + 32'd1) : divisor;
	assign divident_p = LO[31] ? (~LO + 32'd1) : LO;
	assign div_stall = !state_r && div;

    always@(*)begin
        //difference = remainder - divisor
        diff = HI_r - divisor_p;
        //if differnce >= 0
		if(div_iter_r[5] == 1'b1) begin
			div_iter_w = div ? 6'd0 : div_iter_r;
			LO_w = divident_p << 1'b1;
			HI_w = {{31'd0},{divident_p[31]}};
			sign_w[0] = divisor[31];
			sign_w[1] = LO[31];
			state_w = 1'd0;
		end
		else begin
			div_iter_w = div ? div_iter_r + 6'd1 : 6'd32;
			sign_w = sign_r;
			if(div_iter_r[4:0] == 5'd31)
				state_w = 1'd1;
			else
				state_w = 1'd0;
            if(diff[31] == 1'b0) begin
                //remainder = difference
                //set lsb of quotient = 1
				if(div_iter_r[4:0] == 5'd31) begin
					HI_w = diff;
 	   				LO_w[31:1] = LO_r[31:1];
 	   				LO_w[0] = 1'd1;
				end
				else begin
 	   				HI_w[31:1] = diff[30:0];
 	   				HI_w[0] = LO_r[31];
					LO_w = {{LO_r[30:1]},{2'b10}};
				end
            end
 	   		else begin
				if(div_iter_r[4:0] == 5'd31) begin
					HI_w = HI_r;
					LO_w = LO_r;
				end
				else begin
	   				LO_w = LO_r << 1'b1;
 	   				HI_w[31:1] = HI_r[30:0];
 	   				HI_w[0] = LO_r[31];			
				end
			end
 	   	end
    end
//=================== sequential part ========================
	always@(posedge clk or negedge rst) begin
		if(!rst) begin
			HI_r <= 32'd0;
			LO_r <= 32'd0;
			sign_r <= 2'd0;
			div_iter_r <= 6'b100000;
			state_r <= 1'd0;
		end
		else begin
			HI_r <= HI_w;
			LO_r <= LO_w;
			sign_r <= sign_w;
			div_iter_r <= div_iter_w;
			state_r <= state_w;
		end
	end

endmodule
