wvResizeWindow -win $_nWave1 4 9 1366 705
wvRestoreSignal -win $_nWave1 \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/final.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 12704.234718
wvSelectSignal -win $_nWave1 {( "G3" 36 )} 
wvSelectSignal -win $_nWave1 {( "G3" 36 )} 
wvSetRadix -win $_nWave1 -format Bin
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvSetPosition -win $_nWave1 {("G3" 37)}
wvSetPosition -win $_nWave1 {("G3" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/Jump_idex_r} \
{/Final_tb/chip0/i_MIPS/MemRead_idex_r} \
{/Final_tb/chip0/i_MIPS/MemWrite_idex_r} \
{/Final_tb/chip0/i_MIPS/MemtoReg_idex_r} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegDst_idex_r} \
{/Final_tb/chip0/i_MIPS/RegRd_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRt_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_idex_r} \
{/Final_tb/chip0/i_MIPS/MemRead} \
{/Final_tb/chip0/i_MIPS/MemWrite} \
{/Final_tb/chip0/i_MIPS/MemRead_idex_w} \
{/Final_tb/chip0/i_MIPS/MemWrite_idex_w} \
{/Final_tb/chip0/i_MIPS/zifidreg/IF_ID_write} \
{/Final_tb/chip0/i_MIPS/zifidreg/IF_flush} \
{/Final_tb/chip0/i_MIPS/zifidreg/PC_4\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zifidreg/clk} \
{/Final_tb/chip0/i_MIPS/zifidreg/inst\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zifidreg/next_PC_4\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zifidreg/next_inst\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zifidreg/proc_stall} \
{/Final_tb/chip0/i_MIPS/zifidreg/rst} \
{/Final_tb/chip0/i_MIPS/zifidreg/next_PC_4_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zifidreg/next_inst_w\[31:0\]} \
{/Final_tb/testbed/finish} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 37 )} 
wvSetPosition -win $_nWave1 {("G3" 37)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 37 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 36)}
wvScrollUp -win $_nWave1 14
wvSelectGroup -win $_nWave1 {G3}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectGroup -win $_nWave1 {G4}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectGroup -win $_nWave1 {G2}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectGroup -win $_nWave1 {G2}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetSignalFilter -win $_nWave1 "CACHE*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "CACHE*"
wvGetSignalSetSignalFilter -win $_nWave1 "CACHE_*"
wvGetSignalSetSignalFilter -win $_nWave1 "CACHE_"
wvGetSignalSetSignalFilter -win $_nWave1 "*CACHE_"
wvGetSignalSetSignalFilter -win $_nWave1 "*CACHE_*"
wvGetSignalSetSignalFilter -win $_nWave1 "*ICACHE_*"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 8361.460605
wvSetCursor -win $_nWave1 8491.095653
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 7713.285364
wvSetCursor -win $_nWave1 7972.555461
wvSetCursor -win $_nWave1 8102.190509
wvSetCursor -win $_nWave1 7842.920413
wvSetCursor -win $_nWave1 7907.737937
wvSetCursor -win $_nWave1 8296.643081
wvSetCursor -win $_nWave1 8102.190509
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/testbed/clk} \
{/Final_tb/testbed/curstate\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/testbed/clk} \
{/Final_tb/testbed/curstate\[100\]} \
{/Final_tb/testbed/addr\[29:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/testbed/clk} \
{/Final_tb/testbed/curstate\[100\]} \
{/Final_tb/testbed/addr\[29:0\]} \
{/Final_tb/testbed/wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 19898.979890 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 6546.569931
wvSetCursor -win $_nWave1 7778.102888 -snap {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/testbed/clk} \
{/Final_tb/testbed/curstate\[100\]} \
{/Final_tb/testbed/addr\[29:0\]} \
{/Final_tb/testbed/wen} \
{/Final_tb/testbed/data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetSignalFilter -win $_nWave1 "DCACHE*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem*"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*xemem*"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem*"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 19185.987125 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 7518.832792
wvSetCursor -win $_nWave1 7713.285364
wvSetCursor -win $_nWave1 7842.920413
wvSetCursor -win $_nWave1 7842.920413
wvSetCursor -win $_nWave1 7842.920413
wvSetCursor -win $_nWave1 8102.190509
wvSetCursor -win $_nWave1 7907.737937
wvSetCursor -win $_nWave1 8102.190509
wvSetCursor -win $_nWave1 7778.102888
wvSetCursor -win $_nWave1 7583.650316
wvSetCursor -win $_nWave1 7907.737937
wvSetCursor -win $_nWave1 8361.460605
wvSetCursor -win $_nWave1 8815.183274
wvSetCursor -win $_nWave1 7972.555461
wvSetCursor -win $_nWave1 8620.730701
wvSetCursor -win $_nWave1 9074.453370
wvSetCursor -win $_nWave1 9074.453370
wvSetCursor -win $_nWave1 9074.453370
wvSetCursor -win $_nWave1 8880.000798
wvSetCursor -win $_nWave1 9009.635846
wvSetCursor -win $_nWave1 9074.453370
wvSetCursor -win $_nWave1 9009.635846
wvSetCursor -win $_nWave1 9009.635846
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 14648.760440
wvSetCursor -win $_nWave1 9009.635846
wvSetCursor -win $_nWave1 7967.622043
wvSetCursor -win $_nWave1 8447.909270
wvSetCursor -win $_nWave1 8447.909270
wvSetCursor -win $_nWave1 8876.737152
wvSetCursor -win $_nWave1 8945.349613
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem*"
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 5034.439332 -snap {("G1" 15)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 13036.367605
wvSetCursor -win $_nWave1 13379.429910
wvSetCursor -win $_nWave1 13859.717137
wvSetCursor -win $_nWave1 14134.166982
wvSetCursor -win $_nWave1 19348.714024
wvSetCursor -win $_nWave1 19348.714024
wvSetCursor -win $_nWave1 19485.938946
wvSetCursor -win $_nWave1 19897.613712
wvSetCursor -win $_nWave1 19417.326485
wvSetCursor -win $_nWave1 19417.326485
wvZoom -win $_nWave1 0.000000 10977.993772
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*memwb*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 13883.177136
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 9367.080405
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 23 24 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvExpandBus -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvCollapseBus -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvExpandBus -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvCollapseBus -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 9415.850348
wvSetCursor -win $_nWave1 9367.080405
wvSetCursor -win $_nWave1 9367.080405
wvSetCursor -win $_nWave1 8684.301202
wvSetCursor -win $_nWave1 8537.991372
wvSetCursor -win $_nWave1 9139.487337 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 9285.797167 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 9204.513928 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 9854.779836 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 9692.213359 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9188.257280 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9854.779836 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9399.593700 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9139.487337 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9480.876939 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 9220.770576 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 9497.133587 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9155.743985 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 9025.690803 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8765.584440 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 8700.557849 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 9253.283871 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8798.097736 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 9302.053814 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8765.584440 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 9155.743985 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 9025.690803 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8765.584440 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetCursor -win $_nWave1 9237.027223 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8846.867679 -snap {("G1" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetCursor -win $_nWave1 9497.133587
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*_idex_*"
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/clk} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvExpandBus -win $_nWave1 {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvCollapseBus -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvExpandBus -win $_nWave1 {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvCollapseBus -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetCursor -win $_nWave1 9025.690803
wvSetCursor -win $_nWave1 8001.521998
wvSetCursor -win $_nWave1 8359.168248
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 9708.470007
wvSetCursor -win $_nWave1 9529.646882
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 9350.823757
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/clk} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_r\[500\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetCursor -win $_nWave1 9480.876939
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/MemtoReg_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/clk} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/zctrl/funct\[5:0\]} \
{/Final_tb/chip0/i_MIPS/zctrl/inst\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 9480.876939
wvSetCursor -win $_nWave1 8391.681543
wvSetCursor -win $_nWave1 8928.150917
wvSetCursor -win $_nWave1 9041.947451
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 8651.787906
wvSetCursor -win $_nWave1 8928.150917
wvSetCursor -win $_nWave1 9415.850348
wvSetCursor -win $_nWave1 9545.903530
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9594.673473
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 17036.966790 25555.450185
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 23467.723517
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 23268.227418 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 23407.874687
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoom -win $_nWave1 7501.053294 19630.416067
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 31 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem*"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 23407.874687
wvSetCursor -win $_nWave1 23407.874687
wvSetCursor -win $_nWave1 9034.977392
wvSetCursor -win $_nWave1 10000.781453
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 8370.304407 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/next_readreg2_2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 13347.242163
wvSetCursor -win $_nWave1 13516.910496
wvSetCursor -win $_nWave1 13460.354385
wvSetCursor -win $_nWave1 13573.466606
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 12498.900500 13912.803272
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 9570.459083
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_readdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_readdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUresult2exmem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 9560.458003
wvSetCursor -win $_nWave1 8580.352103
wvSetCursor -win $_nWave1 8900.386682
wvSetCursor -win $_nWave1 9630.465567
wvSetCursor -win $_nWave1 8506.344106
wvSetCursor -win $_nWave1 8946.391653
wvSetCursor -win $_nWave1 9556.457571
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*RegWrite*"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_readdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUresult2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_idex_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_w} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_readdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUresult2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_idex_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8516.345187
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 10401.123836
wvSetCursor -win $_nWave1 8510.344826
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "next"
wvGetSignalSetSignalFilter -win $_nWave1 "next*"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_readdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUresult2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_idex_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/zifidreg/next_inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8510.344826
wvSetCursor -win $_nWave1 9052.932188
wvSetCursor -win $_nWave1 8445.970054
wvSetCursor -win $_nWave1 8869.004269
wvSetCursor -win $_nWave1 9540.341174
wvSetCursor -win $_nWave1 13540.773419
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 13540.773419
wvSetCursor -win $_nWave1 8598.170407
wvSetCursor -win $_nWave1 9076.382998
wvSetCursor -win $_nWave1 9076.382998
wvSetCursor -win $_nWave1 9508.613608
wvSetCursor -win $_nWave1 9508.613608
wvSetCursor -win $_nWave1 13435.474685
wvSetCursor -win $_nWave1 14005.651235
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvExpandBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvCollapseBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvExpandBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvCollapseBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvExpandBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvCollapseBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvExpandBus -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 57)}
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvCollapseBus -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvExpandBus -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 57)}
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvCollapseBus -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/Readdata1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Readdata2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_readdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUresult2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_idex_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/next_readreg2_2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 5995.590349 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 8542.992032 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 13527.438645
wvSetCursor -win $_nWave1 13389.492705
wvSetCursor -win $_nWave1 13472.260269
wvSetCursor -win $_nWave1 13472.260269
wvSetCursor -win $_nWave1 13509.045853
wvSetCursor -win $_nWave1 13352.707121
wvSetCursor -win $_nWave1 13509.045853
wvSetCursor -win $_nWave1 13996.454839
wvSetCursor -win $_nWave1 13555.027833
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 9067.186602 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8423.898704
wvSetCursor -win $_nWave1 8883.718503
wvSetCursor -win $_nWave1 9417.109469
wvSetCursor -win $_nWave1 13445.130902
wvSetCursor -win $_nWave1 13831.379532
wvSetCursor -win $_nWave1 14015.307451
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 23901.433114
wvSetCursor -win $_nWave1 23680.719611
wvSetCursor -win $_nWave1 23515.184484
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 19652.698178
wvSetCursor -win $_nWave1 19376.806299
wvSetCursor -win $_nWave1 19523.948635
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 24 25 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetCursor -win $_nWave1 18972.164877 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 19505.555843
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_w\[500\]} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_r\[500\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetCursor -win $_nWave1 19045.736045
wvSetCursor -win $_nWave1 19523.948635
wvSetCursor -win $_nWave1 19671.090970
wvSetCursor -win $_nWave1 19523.948635
wvSetCursor -win $_nWave1 20186.089144
wvSetCursor -win $_nWave1 19597.519803
wvSetCursor -win $_nWave1 19340.020715
wvSetCursor -win $_nWave1 23496.791692
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvGetSignalSetSignalFilter -win $_nWave1 "*memwb*"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*memwb*"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/ALUOp_idex_r\[100\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Opcode_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 9639.662251
wvSetCursor -win $_nWave1 9602.876667
wvSetCursor -win $_nWave1 9566.091083
wvSetCursor -win $_nWave1 9566.091083
wvSetCursor -win $_nWave1 9731.626211
wvSetCursor -win $_nWave1 9639.662251
wvSetCursor -win $_nWave1 13465.362973
wvSetCursor -win $_nWave1 13906.789979
wvSetCursor -win $_nWave1 14053.932315
wvSetCursor -win $_nWave1 14072.325106
wvSetCursor -win $_nWave1 14476.966529
wvSetCursor -win $_nWave1 14476.966529
wvSetCursor -win $_nWave1 14495.359321
wvSetCursor -win $_nWave1 14991.964703
wvSetCursor -win $_nWave1 14458.573737
wvSetCursor -win $_nWave1 14973.571911
wvSetCursor -win $_nWave1 14550.537697
wvSetCursor -win $_nWave1 15102.321455
wvSetCursor -win $_nWave1 14587.323281
wvSetCursor -win $_nWave1 9566.091083
wvSetCursor -win $_nWave1 14991.964703
wvSetCursor -win $_nWave1 14660.894448
wvSetCursor -win $_nWave1 15065.535871
wvSetCursor -win $_nWave1 15157.499830
wvSetCursor -win $_nWave1 7984.310977 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 15120.714246
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 23484.836377
wvSetCursor -win $_nWave1 23540.014753
wvSetCursor -win $_nWave1 23613.585920
wvSetCursor -win $_nWave1 12228.447715 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 12706.660306 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8350.327537
wvSetCursor -win $_nWave1 8644.612208
wvZoom -win $_nWave1 0.000000 19901.000869
wvSetCursor -win $_nWave1 8644.612208
wvSetCursor -win $_nWave1 8498.835915
wvSetCursor -win $_nWave1 13988.767189
wvSetCursor -win $_nWave1 14147.130591
wvSetCursor -win $_nWave1 14164.726525
wvSetCursor -win $_nWave1 14182.322459
wvSetCursor -win $_nWave1 8516.431849
