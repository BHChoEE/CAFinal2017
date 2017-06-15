module cache(
    clk,
    proc_reset,
    proc_read,
    proc_write,
    proc_addr,
    proc_wdata,
    proc_stall,
    proc_rdata,
    mem_read,
    mem_write,
    mem_addr,
    mem_rdata,
    mem_wdata,
    mem_ready
);
    
//==== input/output definition ============================
    input          clk;
    // processor interface
    input          proc_reset;
    input          proc_read, proc_write;
    input   [29:0] proc_addr;
    input   [31:0] proc_wdata;
    output         proc_stall;
    output  [31:0] proc_rdata;
    // memory interface
    input  [127:0] mem_rdata;
    input          mem_ready;
    output         mem_read, mem_write;
    output  [27:0] mem_addr;
    output [127:0] mem_wdata;
//====parameters===========================================
	integer i;
//==== wire/reg definition ================================
	reg[1:0] state_w,state_r;
	reg[127:0] block_w[7:0];
	reg[127:0] block_r[7:0];
	reg[24:0] tag_w[7:0];
	reg[24:0] tag_r[7:0];
	reg[7:0] dirty_w,dirty_r;
	reg[7:0] valid_w,valid_r;

	wire[1:0] offset;
	wire[2:0] index;
	wire[24:0] tag;
/*	wire[127:0] d0;
	wire[127:0] d1;
	wire[127:0] d2;
	wire[127:0] d3;
	wire[127:0] d4;
	wire[127:0] d5;
	wire[127:0] d6;
	wire[127:0] d7;*/

	reg[127:0] rdata,wdata;
	reg[31:0] data;
	reg[24:0] tagr;
	reg hit;
	reg dirty;

	reg read,write;

	reg[27:0] address;
	reg[127:0] data2mem;

	reg stall;
//==== combinational circuit ==============================
	assign offset = proc_addr[1:0];
	assign index = proc_addr[4:2];
	assign tag = proc_addr[29:5];

	assign proc_stall = stall;
	assign proc_rdata = data;
	assign mem_addr = address;
	assign mem_wdata = data2mem;
	assign mem_read = read;
	assign mem_write = write;
/*	assign d0 = block_r[0];
	assign d1 = block_r[1];
	assign d2 = block_r[2];
	assign d3 = block_r[3];
	assign d4 = block_r[4];
	assign d5 = block_r[5];
	assign d6 = block_r[6];
	assign d7 = block_r[7];*/

	always@(*) begin//hit
		case(index)
			3'd0: hit = (tag_r[0] == tag) && valid_r[0];
			3'd1: hit = (tag_r[1] == tag) && valid_r[1];
			3'd2: hit = (tag_r[2] == tag) && valid_r[2];
			3'd3: hit = (tag_r[3] == tag) && valid_r[3];
			3'd4: hit = (tag_r[4] == tag) && valid_r[4];
			3'd5: hit = (tag_r[5] == tag) && valid_r[5];
			3'd6: hit = (tag_r[6] == tag) && valid_r[6];
			default: hit = (tag_r[7] == tag) && valid_r[7];
		endcase

		case(index)
			3'd0: tagr = tag_r[0];
			3'd1: tagr = tag_r[1];
			3'd2: tagr = tag_r[2];
			3'd3: tagr = tag_r[3];
			3'd4: tagr = tag_r[4];
			3'd5: tagr = tag_r[5];
			3'd6: tagr = tag_r[6];
			default: tagr = tag_r[7];
		endcase

		case(index)
			3'd0: rdata = block_r[0];
			3'd1: rdata = block_r[1];
			3'd2: rdata = block_r[2];
			3'd3: rdata = block_r[3];
			3'd4: rdata = block_r[4];
			3'd5: rdata = block_r[5];
			3'd6: rdata = block_r[6];
			default: rdata = block_r[7];
		endcase

		case(index)
			3'd0: dirty = dirty_r[0];
			3'd1: dirty = dirty_r[1];
			3'd2: dirty = dirty_r[2];
			3'd3: dirty = dirty_r[3];
			3'd4: dirty = dirty_r[4];
			3'd5: dirty = dirty_r[5];
			3'd6: dirty = dirty_r[6];
			default: dirty = dirty_r[7];
		endcase

		case(offset)
			2'd0: begin
				wdata = {{rdata[127:32]},proc_wdata};
				data = rdata[31:0];
			end
			2'd1: begin
				wdata = {{rdata[127:64]},proc_wdata,{rdata[31:0]}};
				data = rdata[63:32];
			end
			2'd2: begin 
				wdata = {{rdata[127:96]},proc_wdata,{rdata[63:0]}};
				data = rdata[95:64];
			end
			default: begin 
				wdata = {proc_wdata,{rdata[95:0]}};
				data = rdata[127:96];
			end
		endcase
	end

	always@(*) begin	
		case(state_r)
			2'd1: begin
				address = {tag,index};
				data2mem = rdata;
			end
			2'd2: begin
				address = {tagr,index};
				data2mem = rdata;
			end
			default: begin	
				address = {tag,index};
				data2mem = rdata;
			end
		endcase
	end

	always@(*) begin//state transition
	case(state_r)
		2'd0: begin
			read = 1'b0;
			write = 1'b0;
			for(i = 0; i < 8; i = i + 1)
				tag_w[i] = tag_r[i];
			if(proc_read && !proc_write) begin
				for(i = 0; i < 8; i = i + 1) begin
					block_w[i] = block_r[i];
					if(index == i) begin
						dirty_w[i] = dirty_r[i];
						valid_w[i] = 1'b1;
					end
					else begin
						dirty_w[i] = dirty_r[i];
						valid_w[i] = valid_r[i];
					end
				end
				if(hit) begin
					stall = 1'b0;
					state_w = state_r;
				end
				else begin
					stall = 1'b1;
					if(dirty) begin
						state_w = 2'd2;
					end
					else begin
						state_w = 2'd1;
					end
				end
			end
			else if(!proc_read && proc_write) begin
				for(i = 0; i < 8; i = i + 1) begin
					if(index == i) begin
						dirty_w[i] = 1'b1;
						valid_w[i] = 1'b1;
					end
					else begin
						dirty_w[i] = dirty_r[i];
						valid_w[i] = valid_r[i];
					end
				end

				if(hit) begin
					stall = 1'b0;
					state_w = state_r;
					for(i = 0; i < 8; i = i + 1) begin
						if(index == i)
							block_w[i] = wdata;
						else
							block_w[i] = block_r[i];
					end
				end
				else begin
					stall = 1'b1;
					for(i = 0; i < 8; i = i + 1)
						block_w[i] = block_r[i];
					if(dirty)
						state_w = 2'd2;
					else
						state_w = 2'd1;
				end
			end
			else begin
				state_w = state_r;
				for(i = 0; i < 8; i = i + 1) begin
					block_w[i] = block_r[i];
					tag_w[i] = tag_r[i];
				end
				dirty_w = dirty_r;
				valid_w = valid_r;
				stall = 1'b0;
			end
		end
		2'd1: begin
			read = 1'b1;
			write = 1'b0;
			dirty_w = dirty_r;
			valid_w = valid_r;
			stall = 1'd1;
			if(mem_ready) begin
				for(i = 0; i < 8; i = i + 1) begin
					if(index == i) begin
						block_w[i] = mem_rdata;
						tag_w[i] = tag;
					end
					else begin
						block_w[i] = block_r[i];
						tag_w[i] = tag_r[i];
					end
				end
				state_w = 2'd0;
			end
			else begin
				state_w = state_r;
				for(i = 0; i < 8; i = i + 1) begin
					block_w[i] = block_r[i];
					tag_w[i] = tag_r[i];
				end
			end
		end
		default: begin
			read = 1'b0;
			write = 1'b1;
			stall = 1'b1;
			for(i = 0; i < 8; i = i + 1) begin
				block_w[i] = block_r[i];
				tag_w[i] = tag_r[i];
			end
			valid_w = valid_r;
			if(mem_ready) begin
				for(i = 0; i < 8; i = i + 1) begin
					if(index == i) 
						dirty_w[i] = 1'b0;
					else
						dirty_w[i] = dirty_r[i];
				end
				state_w = 2'd1;
			end
			else begin
				dirty_w = dirty_r;
				state_w = state_r;
			end
		end
	endcase
	end
//==== sequential circuit =================================
always@( posedge clk or posedge proc_reset ) begin
    if( proc_reset ) begin
		state_r <= 2'd0;
		block_r[0] <= 128'd0;
		block_r[1] <= 128'd0;
		block_r[2] <= 128'd0;
		block_r[3] <= 128'd0;
		block_r[4] <= 128'd0;
		block_r[5] <= 128'd0;
		block_r[6] <= 128'd0;
		block_r[7] <= 128'd0;
		tag_r[0] <= 25'd0;
		tag_r[1] <= 25'd0;
		tag_r[2] <= 25'd0;
		tag_r[3] <= 25'd0;
		tag_r[4] <= 25'd0;
		tag_r[5] <= 25'd0;
		tag_r[6] <= 25'd0;
		tag_r[7] <= 25'd0;
		dirty_r <= 8'd0;
		valid_r <= 8'd0;
    end
    else begin
    	state_r <= state_w;
		block_r[0] <= block_w[0];
		block_r[1] <= block_w[1];
		block_r[2] <= block_w[2];
		block_r[3] <= block_w[3];
		block_r[4] <= block_w[4];
		block_r[5] <= block_w[5];
		block_r[6] <= block_w[6];
		block_r[7] <= block_w[7];
		tag_r[0] <= tag_w[0];
		tag_r[1] <= tag_w[1];
		tag_r[2] <= tag_w[2];
		tag_r[3] <= tag_w[3];
		tag_r[4] <= tag_w[4];
		tag_r[5] <= tag_w[5];
		tag_r[6] <= tag_w[6];
		tag_r[7] <= tag_w[7];
		dirty_r <= dirty_w;
		valid_r <= valid_w;
    end
end

endmodule
