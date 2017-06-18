// Top module of your design, you cannot modify this module!!
module CHIP (	clk,
				rst_n,
//----------for slow_memD------------
				mem_read_D,
				mem_write_D,
				mem_addr_D,
				mem_wdata_D,
				mem_rdata_D,
				mem_ready_D,
//----------for slow_memI------------
				mem_read_I,
				mem_write_I,
				mem_addr_I,
				mem_wdata_I,
				mem_rdata_I,
				mem_ready_I,
//----------for TestBed--------------				
				DCACHE_addr, 
				DCACHE_wdata,
				DCACHE_wen   
			);
input			clk, rst_n;
//--------------------------

output			mem_read_D;
output			mem_write_D;
output	[31:4]	mem_addr_D;
output	[127:0]	mem_wdata_D;
input	[127:0]	mem_rdata_D;
input			mem_ready_D;
//--------------------------
output			mem_read_I;
output			mem_write_I;
output	[31:4]	mem_addr_I;
output	[127:0]	mem_wdata_I;
input	[127:0]	mem_rdata_I;
input			mem_ready_I;
//----------for TestBed--------------
output	[29:0]	DCACHE_addr;
output	[31:0]	DCACHE_wdata;
output			DCACHE_wen;
//--------------------------

// wire declaration
wire        ICACHE_ren;
wire        ICACHE_wen;
wire [29:0] ICACHE_addr;
wire [31:0] ICACHE_wdata;
wire        ICACHE_stall;
wire [31:0] ICACHE_rdata;

wire        DCACHE_ren;
wire        DCACHE_wen;
wire [29:0] DCACHE_addr;
wire [31:0] DCACHE_wdata;
wire        DCACHE_stall;
wire [31:0] DCACHE_rdata;

wire        	D_conn_read;
wire        	D_conn_write;
wire [27:0]     D_conn_addr;
wire [127:0]    D_conn_rdata;
wire [127:0]    D_conn_wdata;
wire            D_conn_ready;

wire        	I_conn_read;
wire        	I_conn_write;
wire [27:0]     I_conn_addr;
wire [127:0]    I_conn_rdata;
wire [127:0]    I_conn_wdata;
wire            I_conn_ready;

//=========================================
	// Note that the overall design of your MIPS includes:
	// 1. pipelined MIPS processor
	// 2. data cache
	// 3. instruction cache


	MIPS_Pipeline i_MIPS(
		// control interface
		clk, 
		rst_n,
//----------I cache interface-------		
		ICACHE_ren,
		ICACHE_wen,
		ICACHE_addr,
		ICACHE_wdata,
		ICACHE_stall,
		ICACHE_rdata,
//----------D cache interface-------
		DCACHE_ren,
		DCACHE_wen,
		DCACHE_addr,
		DCACHE_wdata,
		DCACHE_stall,
		DCACHE_rdata,
	);
	
	L1cache D_cache(
		clk,
		~rst_n,
		DCACHE_ren,
		DCACHE_wen,
		DCACHE_addr,
		DCACHE_wdata,
		DCACHE_stall,
		DCACHE_rdata,
        D_conn_read,
        D_conn_write,
        D_conn_addr,
        D_conn_rdata,
        D_conn_wdata,
        D_conn_ready
	);
	L2cache D2_cache(
		clk,
        ~rst_n,
        D_conn_read,
        D_conn_write,
        D_conn_addr,
        D_conn_wdata,
        D_conn_ready,
        D_conn_rdata,
		mem_read_D,
		mem_write_D,
		mem_addr_D,
		mem_rdata_D,
		mem_wdata_D,
		mem_ready_D
	);

	L1cache I_cache(
		clk,
		~rst_n,
		ICACHE_ren,
		ICACHE_wen,
		ICACHE_addr,
		ICACHE_wdata,
		ICACHE_stall,
		ICACHE_rdata,
        I_conn_read,
        I_conn_write,
        I_conn_addr,
        I_conn_rdata,
        I_conn_wdata,
        I_conn_ready,
	);
	L2cache I2_cache(
		clk,
        ~rst_n,
        I_conn_read,
        I_conn_write,
        I_conn_addr,
        I_conn_wdata,
        I_conn_ready,
        I_conn_rdata,
		mem_read_I,
		mem_write_I,
		mem_addr_I,
		mem_rdata_I,
		mem_wdata_I,
		mem_ready_I
	);
	// L1cache I_cache(
	// 	clk,
	// 	~rst_n,
	// 	ICACHE_ren,
	// 	ICACHE_wen,
	// 	ICACHE_addr,
	// 	ICACHE_wdata,
	// 	ICACHE_stall,
	// 	ICACHE_rdata,
	// 	mem_read_I,
	// 	mem_write_I,
	// 	mem_addr_I,
	// 	mem_rdata_I,
	// 	mem_wdata_I,
	// 	mem_ready_I
	// );
endmodule

