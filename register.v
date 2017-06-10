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
