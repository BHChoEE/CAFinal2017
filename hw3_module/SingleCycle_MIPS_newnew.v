// Single Cycle MIPS
//=========================================================
// Input/Output Signals:
// positive-edge triggered         clk
// active low asynchronous reset   rst_n
// instruction memory interface    IR_addr, IR
// output for testing purposes     RF_writedata  
//=========================================================
// Wire/Reg Specifications:
// control signals             MemToReg, MemRead, MemWrite, 
//                             RegDST, RegWrite, Branch, 
//                             Jump, ALUSrc, ALUOp
// ALU control signals         ALUctrl
// ALU input signals           ALUin1, ALUin2
// ALU output signals          ALUresult, ALUzero
// instruction specifications  r, j, jal, jr, lw, sw, beq
// sign-extended signal        SignExtend
// MUX output signals          MUX_RegDST, MUX_MemToReg, 
//                             MUX_Src, MUX_Branch, MUX_Jump
// registers input signals     Reg_R1, Reg_R2, Reg_W, WriteData 
// registers                   Register
// registers output signals    ReadData1, ReadData2
// data memory contral signals CEN, OEN, WEN
// data memory output signals  ReadDataMem
// program counter/address     PCin, PCnext, JumpAddr, BranchAddr
//=========================================================

module SingleCycle_MIPS( 
    clk,
    rst_n,
    IR_addr,
    IR,
    RF_writedata,
    ReadDataMem,
    CEN,
    WEN,
    A,
    ReadData2,
    OEN
);

//==== in/out declaration =================================
    //-------- processor ----------------------------------
    input         clk, rst_n;
    input  [31:0] IR;
    output [31:0] IR_addr, RF_writedata;
    //-------- data memory --------------------------------
    input  [31:0] ReadDataMem;  // read_data from memory
    output        CEN;  // chip_enable, 0 when you read/write data from/to memory
    output        WEN;  // write_enable, 0 when you write data into SRAM & 1 when you read data from SRAM
    output  [6:0] A;  // address
    output [31:0] ReadData2;  // write_data to memory
    output        OEN;  // output_enable, 0

//==== reg/wire declaration ===============================
    //module wire declaration
    wire    [4:0]   ReadReg1, ReadReg2, WriteReg;
    wire    [31:0]  ReadData1, prev_ReadData2, WriteData;
    wire    [3:0]   ctrl;
    wire    [31:0]  y, ALUResult;
    wire            zero;
    wire    [5:0]   inst5_0,inst31_26;
    wire    [1:0]   ALUOp, RegDst, MemToReg;
    wire            Jump, Branch, MemRead, MemWrite, ALUSrc, RegWrite, Jr;
    reg		    prev_WEN;
    wire    [3:0]   next_addr31_28; 
    //combination reg/wire declaration
    wire    [4:0]   inst25_21, inst20_16, inst15_11;
    wire    [15:0]  inst15_0;
    wire    [25:0]  inst25_0;
    wire    [31:0]  sign_ext;

    //instruction address
    reg	    [31:0]  reg_IR_addr;
    wire    [31:0]  prev_IR_addr;
    wire    [31:0]  next_address, jump_address, ALU_address, sign_address;
    wire    [31:0]  muxres1, muxres2, muxres3;

//==== submodule instantiation ===========================
    //register
    register    register(.clk(clk), .rst_n(rst_n), .RegWrite(RegWrite), .ReadReg1(ReadReg1), .ReadReg2(ReadReg2),
                         .WriteReg(WriteReg), .WriteData(WriteData), .ReadData1(ReadData1),
                         .ReadData2(prev_ReadData2) );
    //alu
    alu         alu(.ctrl(ctrl), .x(ReadData1), .y(y), .zero(zero) ,.out(ALUResult));
    //aluControl
    aluCtrl     aluCtrl(.inst(inst5_0), .ALUOp(ALUOp), .ctrl(ctrl));
    //control
    control     control(.inst(inst31_26), .inst5_0(inst5_0), .RegDst(RegDst), .Jump(Jump), .Jr(Jr), .Branch(Branch), 
                        .MemRead(MemRead), .MemToReg(MemToReg), .ALUOp(ALUOp), .MemWrite(MemWrite),
                        .ALUSrc(ALUSrc), .RegWrite(RegWrite) );

//==== combinational part =================================
    assign RF_writedata = WriteData;
    //instruction dissipation
    assign inst31_26 = IR[31:26];
    assign inst25_21 = IR[25:21];
    assign inst20_16 = IR[20:16];
    assign inst15_11 = IR[15:11];
    assign inst5_0 = IR[5:0];
    assign inst15_0 = IR[15:0];
    assign inst25_0 = IR[25:0];
    
    //instruction memory
    assign prev_IR_addr = IR_addr;
    assign next_address = prev_IR_addr + 3'd4;
    assign next_addr31_28 = next_address[31:28];
    assign jump_address = {next_addr31_28, inst25_0, 2'b00 };
    assign sign_address = {sign_ext[29:0], 2'b00};
    assign ALU_address = next_address + sign_address;
    assign muxres1 = (Branch & zero) ? ALU_address : next_address;
    assign muxres2 = (Jump) ? jump_address : muxres1;
    assign muxres3 = (Jr)? ReadData1 : muxres2;

    //inst to register/control/aluCtrl
    assign ReadReg1 = inst25_21;
    assign ReadReg2 = inst20_16;
    assign WriteReg = (RegDst[1]) ? 5'b11111 : ((RegDst[0]) ? inst15_11 : inst20_16);
    assign sign_ext = {{16{inst15_0[15]}}, inst15_0[15:0]};
    //register to alu
    assign y = (ALUSrc) ? sign_ext : prev_ReadData2;
    //data memory
    assign ReadData2 = prev_ReadData2;
//    assign WEN = MemRead;
    always@(*) begin
	if(MemWrite)
	    prev_WEN <= 1'b0;
	if(MemRead)
	    prev_WEN <= 1'b1;
    end
    assign WEN = prev_WEN;
    assign CEN = ~(MemWrite | MemRead);
    assign OEN = 1'b0;
    assign A = ALUResult[8:2];
    assign WriteData = (MemToReg[1]) ? next_address : (MemToReg[0] ? ReadDataMem : ALUResult);

//==== sequential part ====================================
    always@(posedge clk or negedge rst_n) begin
	if(~rst_n)
	    reg_IR_addr <= 32'b0;
	else if(rst_n)
	    reg_IR_addr <= muxres3;
    end
    assign IR_addr = reg_IR_addr;
endmodule

// submodule
//====== REGISTER =======
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
    
    reg [31:0] register [31:0];
    reg [31:0] prev_ReadData1, prev_ReadData2;
    //==== combinational part ====
    
    always@(negedge rst_n or posedge clk) begin
	//rst operation
	if(~rst_n) begin
	    register[0] <= 32'b0;
  	    register[1] <= 32'b0;
	    register[2] <= 32'b0;
	    register[3] <= 32'b0;
	    register[4] <= 32'b0;
	    register[5] <= 32'b0;
	    register[6] <= 32'b0;
	    register[7] <= 32'b0;
	    register[8] <= 32'b0;
	    register[9] <= 32'b0;
 	    register[10] <= 32'b0;
	    register[11] <= 32'b0;
	    register[12] <= 32'b0;
	    register[13] <= 32'b0;
	    register[14] <= 32'b0;
	    register[15] <= 32'b0;
	    register[16] <= 32'b0;
	    register[17] <= 32'b0;
	    register[18] <= 32'b0;
	    register[19] <= 32'b0;
 	    register[20] <= 32'b0;
	    register[21] <= 32'b0;
	    register[22] <= 32'b0;
	    register[23] <= 32'b0;
	    register[24] <= 32'b0;
	    register[25] <= 32'b0;
	    register[26] <= 32'b0;
	    register[27] <= 32'b0;
	    register[28] <= 32'b0;
	    register[29] <= 32'b0;
	    register[30] <= 32'b0;
	    register[31] <= 32'b0;
	end
	else if(rst_n) begin
		//write operation
	    if(RegWrite == 1'b1) begin
            	if(WriteReg != 5'b0)
	    register[WriteReg] <= WriteData;
            end
	end
    end

    //read operation
    assign ReadData1 = prev_ReadData1;
    assign ReadData2 = prev_ReadData2;
    always@(*) begin
        prev_ReadData1 <= register[ReadReg1];
        prev_ReadData2 <= register[ReadReg2];
    end
        
endmodule

//====== ALU ======
module alu(
    ctrl,
    x,
    y,
    zero,
    out
);
    //==== in/out reg/wire declaration ====
    input   [3:0]   ctrl;
    input   [31:0]  x, y;
    output          zero;
    output  [31:0]  out;

    reg         prev_zero;
    reg [31:0]  prev_out;
    //==== combinational part ====
    assign zero = prev_zero;
    assign out = prev_out;
    always@(*) begin
        if(ctrl == 4'b0010)
            prev_out <= x + y;
        else if(ctrl == 4'b0110)
            prev_out <= x - y;
        else if(ctrl == 4'b0000)
            prev_out <= x & y;
        else if(ctrl == 4'b0001)
            prev_out <= x | y;
        else if(ctrl == 4'b0111) begin
            if (x < y)
                prev_out <= 1;
            else
                prev_out <= 32'b0;
        end
        else if(ctrl == 4'b1100)
            prev_out <= ~(x | y);
        if(x - y == 32'b0)
	    prev_zero <= 1'b1;
	else if(x - y != 32'b0)
	    prev_zero <= 1'b0;
    end
endmodule

//====== ALU CONTROL ======
module aluCtrl(
        inst,
        ALUOp,
        ctrl
);
    //==== in/out reg/wire declaration ====
    input   [5:0]   inst;
    input   [1:0]   ALUOp;
    output  [3:0]   ctrl;

    wire    [1:0]   tmp;
    //==== combinational part ====
    assign tmp[0] = ALUOp[1] & inst[1];
    assign tmp[1] = inst[0] | inst[3];
    assign ctrl[3] = 1'b0;
    assign ctrl[2] = ALUOp[0] | tmp[0];
    assign ctrl[1] = (~ALUOp[1]) | (~inst[2]);
    assign ctrl[0] = ALUOp[1] & tmp[1];
endmodule

//====== CONTROL ======
module control(
        inst,
	inst5_0,
        RegDst,
	Jr,
        Jump,
        Branch,
        MemRead,
        MemToReg,
        ALUOp,
        MemWrite,
        ALUSrc,
        RegWrite
);
    //==== in/out reg/wire declaration ====
    input   [5:0]   inst, inst5_0;
    output  [1:0]   RegDst, MemToReg, ALUOp;
    output  Jr, Jump, Branch, MemRead, MemWrite, ALUSrc, RegWrite;

    reg         prev_Jump, prev_Jr, prev_Branch, prev_MemRead;
    reg [1:0]   prev_RegDst, prev_ALUOp, prev_MemToReg;
    reg         prev_MemWrite, prev_ALUSrc, prev_RegWrite;
    //==== combinational part ====
    assign RegDst = prev_RegDst;
    assign Jump = prev_Jump;
    assign Jr = prev_Jr;
    assign Branch = prev_Branch;
    assign MemRead = prev_MemRead;
    assign MemToReg = prev_MemToReg;
    assign ALUOp = prev_ALUOp;
    assign MemWrite = prev_MemWrite;
    assign ALUSrc = prev_ALUSrc;
    assign RegWrite = prev_RegWrite;

    always@(*) begin
	//R-type
        if(inst == 6'b000000) begin
	    prev_RegDst <= 2'b01;
            prev_Branch <= 1'b0;
            prev_MemRead <= 1'b0;
            prev_MemToReg <= 2'b00;
            prev_ALUOp <= 2'b10;
            prev_MemWrite <= 1'b0;
            prev_ALUSrc <= 1'b0;
            prev_RegWrite <= 1'b1;
	    prev_Jump <= 1'b0;    
	   //normal R-type
	    if(inst5_0 != 6'b001000) 
		prev_Jr <= 1'b0;
	    //jr
	    else if(inst5_0 == 6'b001000)
		prev_Jr <= 1'b1;
        end
	//lw
        else if(inst == 6'b100011) begin
            prev_RegDst <= 2'b00;
            prev_Branch <= 1'b0;
            prev_MemRead <= 1'b1;
            prev_MemToReg <= 2'b01;
            prev_ALUOp <= 2'b00;
            prev_MemWrite <= 1'b0;
            prev_ALUSrc <= 1'b1;
            prev_RegWrite <= 1'b1;
	    prev_Jump <= 1'b0;
	    prev_Jr <= 1'b0;           
        end
	//sw
        else if(inst == 6'b101011) begin
            prev_Branch <= 1'b0;
            prev_MemRead <= 1'b0;
            prev_ALUOp <= 2'b00;
            prev_MemWrite <= 1'b1;
            prev_ALUSrc <= 1'b1;
            prev_RegWrite <= 1'b0;
	    prev_Jump <= 1'b0;
	    prev_Jr <= 1'b0;
        end
	//beq
        else if(inst == 6'b000100) begin
            prev_Branch <= 1'b1;
            prev_MemRead <= 1'b0;
            prev_ALUOp <= 2'b01;
            prev_MemWrite <= 1'b0;
            prev_ALUSrc <= 1'b0;
            prev_RegWrite <= 1'b0;
	    prev_Jump <= 1'b0;
	    prev_Jr <= 1'b0;            
        end
	//jump
        else if(inst == 6'b000010) begin
            prev_RegWrite <= 1'b0;
	    prev_MemRead <= 1'b0;
	    prev_MemWrite <= 1'b0;
	    prev_Jump <= 1'b1;
	    prev_Jr <= 1'b0;
	end
	//jal
	else if(inst == 6'b000011) begin
	    prev_RegDst <= 2'b10;
	    prev_MemToReg <= 2'b10;
	    prev_RegWrite <= 1'b1;
	    prev_MemRead <= 1'b0;
	    prev_MemWrite <= 1'b0;
	    prev_Jump <= 1'b1;
	    prev_Jr <= 1'b0;
	end
    end
endmodule
