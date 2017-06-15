module BranchPrd(
	clk,
	rst,
	taken,
	take,
	Branch
);
//input output
	input clk;
	input rst;
	input taken;
	input Branch;
	output take;
//regwire
	reg[1:0] state_r,state_w;
	reg take_r;
//combinational
	assign take = take_r;

	always@(*) begin
		if(!Branch) begin
			state_w = state_r;
		end
		else begin
			case(state_r)
				2'b00: begin
					take_r = 1'b1;
					if(taken)
						state_w = state_r;
					else
						state_w = 2'b01;
				end
				2'b01: begin
					take_r = 1'b1;
					if(taken)
						state_w = 2'b00;
					else
						state_w = 2'b10;
				end
				2'b10: begin
					take_r = 1'b0;
					if(taken)
						state_w = 2'b01;
					else
						state_w = 2'b11;
				end	
				default: begin
					take_r = 1'b0;
					if(taken)
						state_w = 2'b10;
 	 				else
						state_w = state_r;
					end
			endcase
		end
		case(state_r)
			2'b00:take_r = 1'b1;
			2'b01:take_r = 1'b1;
			2'b10:take_r = 1'b0;
			default:take_r = 1'b0;
		endcase
	end
//sequential
	always@(posedge clk or negedge rst) begin
		if(!rst) begin
			state_r <= 2'b11;
		end
		else begin
			state_r <= state_w;
		end
	end
endmodule
