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
	
	wire[31:0] r_12;
	wire[31:0] r_13;
	integer i;

	assign r_12 = register_r[12];
	assign r_13 = register_r[13];
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
			register_r[0] <= 32'b0;
			register_r[1] <= 32'b0;
			register_r[2] <= 32'b0;
			register_r[3] <= 32'b0;
			register_r[4] <= 32'b0;
			register_r[5] <= 32'b0;
			register_r[6] <= 32'b0;
			register_r[7] <= 32'b0;
			register_r[8] <= 32'b0;
			register_r[9] <= 32'b0;
			register_r[10] <= 32'b0;
			register_r[11] <= 32'b0;
			register_r[12] <= 32'b0;
			register_r[13] <= 32'b0;
			register_r[14] <= 32'b0;
			register_r[15] <= 32'b0;
			register_r[16] <= 32'b0;
			register_r[17] <= 32'b0;
			register_r[18] <= 32'b0;
			register_r[19] <= 32'b0;
			register_r[20] <= 32'b0;
			register_r[21] <= 32'b0;
			register_r[22] <= 32'b0;
			register_r[23] <= 32'b0;
			register_r[24] <= 32'b0;
			register_r[25] <= 32'b0;
			register_r[26] <= 32'b0;
			register_r[27] <= 32'b0;
			register_r[28] <= 32'b0;
			register_r[29] <= 32'b0;
			register_r[30] <= 32'b0;
			register_r[31] <= 32'b0;
		end
		else begin
			register_r[0] <= register_w[0];
			register_r[1] <= register_w[1];
			register_r[2] <= register_w[2];
			register_r[3] <= register_w[3];
			register_r[4] <= register_w[4];
			register_r[5] <= register_w[5];
			register_r[6] <= register_w[6];
			register_r[7] <= register_w[7];
			register_r[8] <= register_w[8];
			register_r[9] <= register_w[9];
			register_r[10] <= register_w[10];
			register_r[11] <= register_w[11];
			register_r[12] <= register_w[12];
			register_r[13] <= register_w[13];
			register_r[14] <= register_w[14];
			register_r[15] <= register_w[15];
			register_r[16] <= register_w[16];
			register_r[17] <= register_w[17];
			register_r[18] <= register_w[18];
			register_r[19] <= register_w[19];
			register_r[20] <= register_w[20];
			register_r[21] <= register_w[21];
			register_r[22] <= register_w[22];
			register_r[23] <= register_w[23];
			register_r[24] <= register_w[24];
			register_r[25] <= register_w[25];
			register_r[26] <= register_w[26];
			register_r[27] <= register_w[27];
			register_r[28] <= register_w[28];
			register_r[29] <= register_w[29];
			register_r[30] <= register_w[30];
			register_r[31] <= register_w[31];
		end
    end
       
endmodule
