module L2cache(
    clk,
    cache_reset,
    cache_read,
    cache_write,
    cache_addr,
    cache_wdata,
    cache_ready,
    cache_rdata,
    mem_read,
    mem_write,
    mem_addr,
    mem_rdata,
    mem_wdata,
    mem_ready
);

//====parameters===========================================
	integer i,j;
    parameter      LARGE_BLOCK_NUM = 8;//n-way associative
    parameter      SMALL_BLOCK_NUM = 8;//64/LARGE_BLOCK_NUM
    parameter      ADDR_INDEX_WIDTH = 3;//log2 LARGE_BLOCK_NUM
    parameter      BLOCK_PTR_POS = 3;//log2 SMALL_BLOCK_NUM
//==== input/output definition ============================
    input          clk;
    // cacheessor interface
    input          cache_reset;
    input          cache_read, cache_write;
    input   [27:0] cache_addr;
    input   [127:0] cache_wdata;
    output reg     cache_ready;
    output  [127:0] cache_rdata;
    // memory interface
    input  [127:0] mem_rdata;
    input          mem_ready;
    output         mem_read, mem_write;
    output  [27:0] mem_addr;
    output reg [127:0] mem_wdata;
//==== wire/reg definition ================================
	reg [1:0]                   state_w,state_r;
	reg [127:0]                 block_w  [LARGE_BLOCK_NUM-1:0][SMALL_BLOCK_NUM-1:0];
	reg [127:0]                 block_r  [LARGE_BLOCK_NUM-1:0][SMALL_BLOCK_NUM-1:0];
	reg [27-ADDR_INDEX_WIDTH:0] tag_w    [LARGE_BLOCK_NUM-1:0][SMALL_BLOCK_NUM-1:0];
	reg [27-ADDR_INDEX_WIDTH:0] tag_r    [LARGE_BLOCK_NUM-1:0][SMALL_BLOCK_NUM-1:0];
	reg [SMALL_BLOCK_NUM-1:0]   dirty_w  [LARGE_BLOCK_NUM-1:0];
    reg [SMALL_BLOCK_NUM-1:0]   dirty_r  [LARGE_BLOCK_NUM-1:0];
	reg [SMALL_BLOCK_NUM-1:0]   valid_w  [LARGE_BLOCK_NUM-1:0];
    reg [SMALL_BLOCK_NUM-1:0]   valid_r  [LARGE_BLOCK_NUM-1:0];

    reg [BLOCK_PTR_POS-1:0]     block_ptr [0:LARGE_BLOCK_NUM-1];
	reg 						block_ptr_write;

	wire [ADDR_INDEX_WIDTH-1:0]     index;
	wire [27-ADDR_INDEX_WIDTH:0]    tag;
    wire [BLOCK_PTR_POS-1:0]        curr_block_ptr;
    wire [BLOCK_PTR_POS-1:0]        hit_ptr;


	// reg[127:0]                  rdata;
	reg  [127:0] 					cache_rdata;
	reg[27-ADDR_INDEX_WIDTH:0]  tagr;
	reg                         hit;
    wire [SMALL_BLOCK_NUM-1:0]  hit_or_not;
    wire [SMALL_BLOCK_NUM-1:0]  hit_block;
	reg                         dirty;
	reg                         read,write;

	reg[27:0]                   address;
	// reg[127:0] data2mem;
	reg [127:0]					mem_wdata_now;
	// reg stall;
    reg 						ready_buffer;
	reg 						L2_ready;
	reg 						mem_write_ready_buffer;
//==== combinational circuit ==============================
	// assign offset = cache_addr[1:0];
	assign index = cache_addr[2:0];
	assign tag = cache_addr[27:3];
    assign curr_block_ptr = block_ptr[index];
        assign hit_or_not[0] = tag_r[index][0] == tag;
        assign hit_or_not[1] = tag_r[index][1] == tag;
        assign hit_or_not[2] = tag_r[index][2] == tag;
        assign hit_or_not[3] = tag_r[index][3] == tag;
        assign hit_or_not[4] = tag_r[index][4] == tag;
        assign hit_or_not[5] = tag_r[index][5] == tag;
        assign hit_or_not[6] = tag_r[index][6] == tag;
        assign hit_or_not[7] = tag_r[index][7] == tag;
    assign hit_block = hit_or_not & valid_r[index];
    assign hit_ptr = (!hit) ? 3'd0 : 
                     hit_block[0] ? 3'd0 :
                     hit_block[1] ? 3'd1 :
                     hit_block[2] ? 3'd2 :
                     hit_block[3] ? 3'd3 :
                     hit_block[4] ? 3'd4 :
                     hit_block[5] ? 3'd5 :
                     hit_block[6] ? 3'd6 : 3'd7;

	// assign cache_stall = stall;
        // assign cache_rdata = rdata;
	assign mem_addr = address;
	// assign mem_wdata = data2mem;
	assign mem_read = read;
	assign mem_write = write;


	always@(*) begin//hit

        hit = |hit_block;
		// case(index)
		// 	3'd0: hit = tag_r[0] == tag && valid_r[0];
		// 	3'd1: hit = tag_r[1] == tag && valid_r[1];
		// 	3'd2: hit = tag_r[2] == tag && valid_r[2];
		// 	3'd3: hit = tag_r[3] == tag && valid_r[3];
		// 	3'd4: hit = tag_r[4] == tag && valid_r[4];
		// 	3'd5: hit = tag_r[5] == tag && valid_r[5];
		// 	3'd6: hit = tag_r[6] == tag && valid_r[6];
		// 	default: hit = tag_r[7] == tag && valid_r[7];
		// endcase
        tagr = tag_r[index][curr_block_ptr];//CHANGED
		// case(index)
		// 	3'd0: tagr = tag_r[0];
		// 	3'd1: tagr = tag_r[1];
		// 	3'd2: tagr = tag_r[2];
		// 	3'd3: tagr = tag_r[3];
		// 	3'd4: tagr = tag_r[4];
		// 	3'd5: tagr = tag_r[5];
		// 	3'd6: tagr = tag_r[6];
		// 	default: tagr = tag_r[7];
		// endcase
        if (hit) begin
			cache_rdata = block_r[index][hit_ptr];
			dirty = dirty_r[index][hit_ptr];
		end
		else begin
			cache_rdata = block_r[index][curr_block_ptr];
			dirty = dirty_r[index][curr_block_ptr];
		end
		// case(index)
		// 	3'd0: rdata = block_r[0];
		// 	3'd1: rdata = block_r[1];
		// 	3'd2: rdata = block_r[2];
		// 	3'd3: rdata = block_r[3];
		// 	3'd4: rdata = block_r[4];
		// 	3'd5: rdata = block_r[5];
		// 	3'd6: rdata = block_r[6];
		// 	default: rdata = block_r[7];
		// endcase
		// case(index)
		// 	3'd0: dirty = dirty_r[0];
		// 	3'd1: dirty = dirty_r[1];
		// 	3'd2: dirty = dirty_r[2];
		// 	3'd3: dirty = dirty_r[3];
		// 	3'd4: dirty = dirty_r[4];
		// 	3'd5: dirty = dirty_r[5];
		// 	3'd6: dirty = dirty_r[6];
		// 	default: dirty = dirty_r[7];
		// endcase
        // wdata = cache_wdata;
		// case(offset)
		// 	2'd0: begin
		// 		wdata = {{rdata[127:32]},cache_wdata};
		// 		cache_rdata = rdata[31:0];
		// 	end
		// 	2'd1: begin
		// 		wdata = {{rdata[127:64]},cache_wdata,{rdata[31:0]}};
		// 		cache_rdata = rdata[63:32];
		// 	end
		// 	2'd2: begin 
		// 		wdata = {{rdata[127:96]},cache_wdata,{rdata[63:0]}};
		// 		cache_rdata = rdata[95:64];
		// 	end
		// 	default: begin 
		// 		wdata = {cache_wdata,{rdata[95:0]}};
		// 		cache_rdata = rdata[127:96];
		// 	end
		// endcase
	end

	always@(*) begin
        if (!mem_write) mem_wdata = cache_rdata;
		else mem_wdata = mem_wdata_now;
		case(state_r)
			// 2'd1: begin
			// 	address = {tag,index};
			// 	data2mem = rdata;
			// end
			2'd2: begin
				address = {tagr,index};
				// data2mem = rdata;
			end
			default: begin	
				address = {tag,index};
				// data2mem = rdata;
			end
		endcase
	end

	always@(*) begin//state transition
	if (cache_reset) begin
		state_w = 2'd0;
		for (i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin 
			dirty_w[i] = 8'd0;
			valid_w[i] = 8'd0;
			for (j = 0; j < SMALL_BLOCK_NUM; j = j+1) begin 
				block_w[i][j] = 128'd0;
				tag_w[i][j] = 25'd0;
			end
		end
	end
	case(state_r)
		2'd0: begin
			read = 1'b0;
			write = 1'b0;
			for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1)
                for(j = 0; j < SMALL_BLOCK_NUM; j = j + 1)
				    tag_w[i][j] = tag_r[i][j];
			if(cache_read && !cache_write) begin
				for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                    dirty_w[i] = dirty_r[i];
                    for (j = 0; j < SMALL_BLOCK_NUM; j = j + 1) begin
                        block_w[i][j] = block_r[i][j];
						if (hit) begin
							if(index == i && hit_ptr == j)
								// dirty_w[i][j] = dirty_r[i][j];
								valid_w[i][j] = 1'b1;
							else valid_w[i][j] = valid_r[i][j];
						end
						else if (index == i && curr_block_ptr == j)
							valid_w[i][j] = 1'b1;
						else // dirty_w[i][j] = dirty_r[i][j];
							valid_w[i][j] = valid_r[i][j];
                    end
				end
				if(hit) begin
					// stall = 1'b0;
					state_w = state_r;
				end
				else begin
					if(dirty) begin
						// stall = 1'b1;
						state_w = 2'd2;
					end
					else begin
						// stall = 1'b1;
						state_w = 2'd1;
					end
				end
			end
			else if(!cache_read && cache_write) begin
				for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                    for (j = 0 ; j < SMALL_BLOCK_NUM; j = j + 1) begin
						if (hit) begin
							if(index == i && hit_ptr == j) begin
								dirty_w[i][j] = 1'b1;
								valid_w[i][j] = 1'b1;
							end
							else begin
								dirty_w[i][j] = dirty_r[i][j];
								valid_w[i][j] = valid_r[i][j];
							end
						end
                        else if (index == i && curr_block_ptr == j) begin
							dirty_w[i][j] = 1'b1;
							valid_w[i][j] = 1'b1;
						end
						else begin
                            dirty_w[i][j] = dirty_r[i][j];
                            valid_w[i][j] = valid_r[i][j];
                        end
                    end
				end

				if(hit) begin
					// stall = 1'b0;
					state_w = state_r;
					// if (!cache_ready) L2_ready = 1;
					for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                        for (j = 0 ; j < SMALL_BLOCK_NUM; j = j + 1) begin
                            if(index == i && hit_ptr == j)//CHANGED
                                block_w[i][j] = cache_wdata;
                            else
                                block_w[i][j] = block_r[i][j];
                        end
					end
				end
				else begin
					for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1)
                        for (j = 0; j < SMALL_BLOCK_NUM; j = j + 1)
                            block_w[i][j] = block_r[i][j];
					// stall = 1'b1;
					if(dirty)
						state_w = 2'd2;
					else
						state_w = 2'd1;
				end
			end
			else begin
				state_w = state_r;
				for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                    for (j = 0; j < SMALL_BLOCK_NUM; j = j + 1) begin
                        block_w[i][j] = block_r[i][j];
                        tag_w[i][j] = tag_r[i][j];
                    end
                    dirty_w[i] = dirty_r[i];
                    valid_w[i] = valid_r[i];
				end
				// stall = 1'b0;
			end
		end
		2'd1: begin
			read = 1'b1;
			write = 1'b0;
            for (i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                dirty_w[i] = dirty_r[i];
                valid_w[i] = valid_r[i];
            end
			if(mem_ready) begin
				for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                    for (j = 0; j < SMALL_BLOCK_NUM; j = j + 1) begin 
                        if(index == i && curr_block_ptr == j) begin
                            block_w[i][j] = mem_rdata;
							// dirty_w[i][j] = 1'b0;//*****dirty_w
                            tag_w[i][j] = tag;
                        end
                        else begin
                            block_w[i][j] = block_r[i][j];
                            tag_w[i][j] = tag_r[i][j];
                        end
                    end
				end
				// stall = 1'b1;
				state_w = 2'd0;
			end
			else begin
				// stall = 1'b1;
				state_w = state_r;
				for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                    for (j = 0 ; j < SMALL_BLOCK_NUM; j = j + 1) begin 
                        block_w[i][j] = block_r[i][j];
                        tag_w[i][j] = tag_r[i][j];
                    end
				end
			end
		end
		default: begin
			read = 1'b0;
			write = 1'b1;
			// stall = 1'b1;
            for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
                for (j = 0; j < SMALL_BLOCK_NUM; j = j + 1) begin
					if (mem_ready && index == i && curr_block_ptr == j) dirty_w[i][j] = 0;
					else dirty_w[i][j] = dirty_r[i][j];
                    block_w[i][j] = block_r[i][j];
                    tag_w[i][j] = tag_r[i][j];
                end
                valid_w[i] = valid_r[i];
            end
			if(mem_ready) begin
				state_w = 2'd1;
			end
			else begin
				state_w = state_r;
			end
		end
	endcase
	end
//==== sequential circuit =================================
always@( negedge clk ) begin
	if (cache_reset ) L2_ready <= 0;
	else if (state_r == 2'b0 && hit && (cache_read ^ cache_write) && !L2_ready) L2_ready <= 1;
	else L2_ready <= 0;
end

always@( posedge clk or posedge cache_reset ) begin
    if( cache_reset ) begin
		state_r <= 2'd0;
		// block_r[0] <= 128'd0;
		// block_r[1] <= 128'd0;
		// block_r[2] <= 128'd0;
		// block_r[3] <= 128'd0;
		// block_r[4] <= 128'd0;
		// block_r[5] <= 128'd0;
		// block_r[6] <= 128'd0;
		// block_r[7] <= 128'd0;
		// tag_r[0] <= 25'd0;
		// tag_r[1] <= 25'd0;
		// tag_r[2] <= 25'd0;
		// tag_r[3] <= 25'd0;
		// tag_r[4] <= 25'd0;
		// tag_r[5] <= 25'd0;
		// tag_r[6] <= 25'd0;
		// tag_r[7] <= 25'd0;
        for (i = 0; i < LARGE_BLOCK_NUM; i = i+1) begin 
            block_ptr[i] <= 3'b0;//MODIFY
            dirty_r[i] <= 8'd0;//MODIFY
		    valid_r[i] <= 8'd0;//MODIFY
            for (j = 0; j < SMALL_BLOCK_NUM; j = j+1) begin
                block_r[i][j] <= 128'd0;
                tag_r[i][j] <= 25'd0;
            end
        end
		// mem_wdata <= 0;
        ready_buffer <= 0;
		block_ptr_write <= 0;
		mem_write_ready_buffer <= 0;
    end
    else begin
    	state_r <= state_w;
		for(i = 0; i < LARGE_BLOCK_NUM; i = i + 1) begin
            dirty_r[i] <= dirty_w[i];
            valid_r[i] <= valid_w[i];
            for (j = 0 ; j < SMALL_BLOCK_NUM; j = j + 1) begin 
                block_r[i][j] <= block_w[i][j];
                tag_r[i][j] <= tag_w[i][j];
            end
        end
		mem_wdata_now <= mem_wdata;
        ready_buffer <= mem_ready;
        cache_ready <= ( ready_buffer && !mem_write_ready_buffer) || L2_ready  ;
		// L2_ready <= 0;
		if (cache_ready && (cache_read || cache_write)) begin
			if (!block_ptr_write) begin
				if (block_ptr[index] == 3'd7) block_ptr[index] <= 3'd0;
				else block_ptr[index] <= block_ptr[index] + 1;
			end
			if (cache_write) block_ptr_write <= 1;
			else block_ptr_write <= 0;	
		end
		if (mem_write && mem_ready) mem_write_ready_buffer <= 1;
		if (mem_read && mem_ready) mem_write_ready_buffer <= 0;
    end
end

endmodule
