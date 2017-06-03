module HazardDetection(
    IDEX_RegRt,
    IDEX_RegRs,
    EXMEM_RegRd,
    MEMWB_RegRd,
    EXMEM_RegWrite,
    MEMWB_RegWrite,
    forwardA,
    forwardB
);
//input output
	input   [4:0]  IDEX_RegRt;
    input   [4:0]  IDEX_RegRs;
    input   [4:0]  EXMEM_RegRd;
    input   [4:0]  MEMWB_RegRd;
    input     EXMEM_RegWrite;
    input     MEMWB_RegWrite;
    output  [1:0]   forwardA;
    output  [1:0]   forwardB;
//reg & wire
//Combinational part
    assign forwardA = (EXMEM_RegWrite && EXMEM_RegRd != 0 && EXMEM_RegRd == IDEX_RegRs) ? 2'b10 : 
                      (MEMWB_RegWrite && MEMWB_RegRd != 0 && MEMWB_RegRd == IDEX_RegRs) ? 2'b01 : 2'b00;  
    assign forwardB = (EXMEM_RegWrite && EXMEM_RegRd != 0 && EXMEM_RegRd == IDEX_RegRt) ? 2'b10 : 
                      (MEMWB_RegWrite && MEMWB_RegRd != 0 && MEMWB_RegRd == IDEX_RegRt) ? 2'b01 : 2'b00; 
endmodule
