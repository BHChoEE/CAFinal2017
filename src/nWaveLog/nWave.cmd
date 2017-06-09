wvResizeWindow -win $_nWave1 4 9 1362 705
wvRestoreSignal -win $_nWave1 \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/final.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 4 9 1362 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 1362 1 1366 745
wvResizeWindow -win $_nWave1 1362 1 1366 705
wvResizeWindow -win $_nWave1 -22 20 1350 689
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvZoom -win $_nWave1 0.000000 11721.044191
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7795.729626
wvSetCursor -win $_nWave1 7823.179378
wvSetCursor -win $_nWave1 8070.227148
wvSetCursor -win $_nWave1 8372.174422
wvSetCursor -win $_nWave1 8399.624174
wvSetCursor -win $_nWave1 8454.523679
wvSetCursor -win $_nWave1 9140.767484
wvSetCursor -win $_nWave1 9030.968475
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetCursor -win $_nWave1 24262.358847
wvSetCursor -win $_nWave1 24426.998242
wvScrollDown -win $_nWave1 14
wvSelectSignal -win $_nWave1 {( "G3" 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
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
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
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
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*memwb*"
wvGetSignalSetSignalFilter -win $_nWave1 "WB"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "W*"
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
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
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8182.577933
wvSetCursor -win $_nWave1 8539.296622
wvSetCursor -win $_nWave1 9170.414303
wvSetCursor -win $_nWave1 12792.480994
wvSetCursor -win $_nWave1 13423.598674
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetCursor -win $_nWave1 8402.097126
wvSetCursor -win $_nWave1 8402.097126
wvSetCursor -win $_nWave1 9060.654706
wvSetCursor -win $_nWave1 13039.440086
wvSetCursor -win $_nWave1 13341.278977
wvSetCursor -win $_nWave1 13396.158775
wvSetCursor -win $_nWave1 13478.478473
wvSetCursor -win $_nWave1 13533.358271
wvSetCursor -win $_nWave1 13560.798170
wvSetCursor -win $_nWave1 9170.414303
wvSetCursor -win $_nWave1 12929.680489
wvSetCursor -win $_nWave1 13451.038574
wvSetCursor -win $_nWave1 13533.358271
wvSetCursor -win $_nWave1 17731.662844
wvSetCursor -win $_nWave1 17539.583550
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetCursor -win $_nWave1 8978.335009
wvSetCursor -win $_nWave1 9005.774908
wvSetCursor -win $_nWave1 12957.120389
wvSetCursor -win $_nWave1 13560.798170
wvSetCursor -win $_nWave1 17567.023449
wvSetCursor -win $_nWave1 17567.023449
wvSetCursor -win $_nWave1 24509.317940
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
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
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetCursor -win $_nWave1 8978.335009
wvSetCursor -win $_nWave1 8978.335009
wvSetCursor -win $_nWave1 12984.560288
wvSetCursor -win $_nWave1 13615.677969
wvSetCursor -win $_nWave1 9033.214807
wvSetCursor -win $_nWave1 12847.360792
wvSetCursor -win $_nWave1 13697.997666
wvSetCursor -win $_nWave1 13505.918372
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 13368.718876
wvSetCursor -win $_nWave1 13505.918372
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 12710.161296 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 8978.335009
wvSetCursor -win $_nWave1 12847.360792
wvSetCursor -win $_nWave1 13478.478473
wvSetCursor -win $_nWave1 17484.703752
wvSetCursor -win $_nWave1 24344.678545
wvSetCursor -win $_nWave1 24372.118444
wvSetCursor -win $_nWave1 8950.895110
wvSetCursor -win $_nWave1 13670.557767
wvSetCursor -win $_nWave1 13560.798171
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*next*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
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
wvGetSignalSetSignalFilter -win $_nWave1 "ALU2*"
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALU2exmem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSetPosition -win $_nWave1 {("G3" 13)}
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
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALU2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Jump_idex_r} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 14 )} 
wvSetPosition -win $_nWave1 {("G3" 14)}
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
wvGetSignalSetSignalFilter -win $_nWave1 "Jump"
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALU2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Jump_idex_r} \
{/Final_tb/chip0/i_MIPS/Jump} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 15 )} 
wvSetPosition -win $_nWave1 {("G3" 15)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8264.897631
wvSetCursor -win $_nWave1 8511.856723
wvSetCursor -win $_nWave1 8841.135513
wvSetCursor -win $_nWave1 8950.895110
wvSetCursor -win $_nWave1 9142.974404
wvSetCursor -win $_nWave1 12819.920893
wvSetCursor -win $_nWave1 12929.680490
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetCursor -win $_nWave1 7880.739042
wvSetCursor -win $_nWave1 8429.537026
wvSetCursor -win $_nWave1 9033.214808
wvSetCursor -win $_nWave1 12847.360792
wvSetCursor -win $_nWave1 13588.238070
wvSetCursor -win $_nWave1 13862.637062
wvSetCursor -win $_nWave1 13533.358272
wvSetCursor -win $_nWave1 12984.560288
wvSetCursor -win $_nWave1 9088.094606
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8950.895110
wvSetCursor -win $_nWave1 8950.895110
wvSetCursor -win $_nWave1 13012.000187
wvSetCursor -win $_nWave1 13505.918372
wvSetCursor -win $_nWave1 13560.798171
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*stall*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4_idex_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALU2exmem\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Jump_idex_r} \
{/Final_tb/chip0/i_MIPS/Jump} \
{/Final_tb/chip0/i_MIPS/stall} \
{/Final_tb/chip0/i_MIPS/stallJ} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSetPosition -win $_nWave1 {("G3" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 16 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 15)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8923.455211
wvSetCursor -win $_nWave1 9170.414303
wvSetCursor -win $_nWave1 8896.015312
wvSetCursor -win $_nWave1 13149.199683
wvSetCursor -win $_nWave1 8731.375917
wvSetCursor -win $_nWave1 8731.375917
wvSetCursor -win $_nWave1 9225.294102
wvSetCursor -win $_nWave1 9225.294102
wvSetCursor -win $_nWave1 9225.294102
wvSetCursor -win $_nWave1 12929.680490
wvSetCursor -win $_nWave1 13505.918372
wvSetCursor -win $_nWave1 14164.475953
wvSetCursor -win $_nWave1 18115.821433
wvSetCursor -win $_nWave1 9142.974404
wvSelectSignal -win $_nWave1 {( "G3" 10 11 12 13 14 15 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 9)}
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
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem*"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 40446.411378
wvZoom -win $_nWave1 0.000000 29998.142078
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 45107.424432
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 44883.557700
wvSetCursor -win $_nWave1 45021.321843
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 73552.275801
wvZoom -win $_nWave1 61496.191261 75341.487605
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetCursor -win $_nWave1 73474.518540
wvSetCursor -win $_nWave1 73553.997853
wvSetCursor -win $_nWave1 66702.881063
wvSetCursor -win $_nWave1 66464.443123
wvSetCursor -win $_nWave1 65987.567245
wvSetCursor -win $_nWave1 65399.420328
wvSetCursor -win $_nWave1 64922.544449
wvSetCursor -win $_nWave1 73363.247501
wvSetCursor -win $_nWave1 66559.818299
wvSetCursor -win $_nWave1 66114.734146
wvSetCursor -win $_nWave1 65478.899641
wvResizeWindow -win $_nWave1 -4 1 1366 705
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
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 10 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSetCursor -win $_nWave1 65909.184015
wvSetCursor -win $_nWave1 66068.189482
wvSetCursor -win $_nWave1 66099.990576
wvSetCursor -win $_nWave1 65765.982803
wvSetCursor -win $_nWave1 65845.485537
wvSetCursor -win $_nWave1 66029.961245
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetSignalFilter -win $_nWave1 "*next*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSetPosition -win $_nWave1 {("G3" 13)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 66745.485849
wvSetCursor -win $_nWave1 66713.684755
wvSetCursor -win $_nWave1 66713.684755
wvSetCursor -win $_nWave1 66554.679288
wvSetCursor -win $_nWave1 66586.480381
wvSetCursor -win $_nWave1 66586.480381
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 66665.983115
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*forward*"
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 14 15 )} 
wvSetPosition -win $_nWave1 {("G3" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 14 )} 
wvSelectSignal -win $_nWave1 {( "G3" 15 )} 
wvSelectGroup -win $_nWave1 {G4}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*memwb*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 66347.972180
wvSetCursor -win $_nWave1 66777.286942
wvSetCursor -win $_nWave1 66729.585302
wvSetCursor -win $_nWave1 66665.983115
wvSetCursor -win $_nWave1 66681.883662
wvSetCursor -win $_nWave1 13532.160301
wvSetCursor -win $_nWave1 13532.160301
wvSetCursor -win $_nWave1 13532.160301
wvSetCursor -win $_nWave1 12959.740618
wvSetCursor -win $_nWave1 13643.464128
wvSetCursor -win $_nWave1 13961.475063
wvSetCursor -win $_nWave1 18095.617215
wvSetCursor -win $_nWave1 14072.778890
wvSetCursor -win $_nWave1 14199.983264
wvSetCursor -win $_nWave1 14120.480530
wvSetCursor -win $_nWave1 14120.480530
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "stall*"
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/stall} \
{/Final_tb/chip0/i_MIPS/stallJ} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 16 17 )} 
wvSetPosition -win $_nWave1 {("G3" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 16 )} 
wvSetCursor -win $_nWave1 18063.816121
wvSetCursor -win $_nWave1 18111.517761
wvSetCursor -win $_nWave1 18016.114481
wvSetCursor -win $_nWave1 18016.114481
wvSetCursor -win $_nWave1 18571.838589
wvSetCursor -win $_nWave1 19112.457178
wvSetCursor -win $_nWave1 23023.991676
wvSetCursor -win $_nWave1 23612.311905
wvSetCursor -win $_nWave1 23612.311905
wvSetCursor -win $_nWave1 23628.212452
wvSetCursor -win $_nWave1 23628.212452
wvSetCursor -win $_nWave1 23675.914092
wvSetCursor -win $_nWave1 23628.212452
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvExpandBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 49)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 41 )} 
wvSelectSignal -win $_nWave1 {( "G3" 40 41 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 47)}
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvCollapseBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvExpandBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 49)}
wvScrollDown -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G3" 40 )} 
wvSelectSignal -win $_nWave1 {( "G3" 40 41 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 47)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvCollapseBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvExpandBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 49)}
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 )} 
wvCreateBusOpen -win $_nWave1
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 1
wvCreateBusOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvCollapseBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSetCursor -win $_nWave1 23739.516279
wvSetCursor -win $_nWave1 23739.516279
wvSetCursor -win $_nWave1 23675.914092
wvSetCursor -win $_nWave1 17888.115080
wvSetCursor -win $_nWave1 18031.220000
wvSetCursor -win $_nWave1 18587.739136
wvSetCursor -win $_nWave1 18301.529295
wvSetCursor -win $_nWave1 18301.529295
wvSetCursor -win $_nWave1 24009.825574
wvSetCursor -win $_nWave1 24089.328307
wvSetCursor -win $_nWave1 24168.831041
wvSetCursor -win $_nWave1 18524.136949
wvSetCursor -win $_nWave1 18985.252805
wvSetCursor -win $_nWave1 23039.892223
wvSetCursor -win $_nWave1 23405.604798
wvSetCursor -win $_nWave1 23978.024480
wvSetCursor -win $_nWave1 24105.228854
wvSetCursor -win $_nWave1 24105.228854
wvSetCursor -win $_nWave1 24677.648537
wvSetCursor -win $_nWave1 28729.107845
wvSetCursor -win $_nWave1 28601.903471
wvSetCursor -win $_nWave1 28601.903471
wvSetCursor -win $_nWave1 29174.323154
wvSetCursor -win $_nWave1 36099.011258
wvSetCursor -win $_nWave1 36528.326020
wvSetCursor -win $_nWave1 36146.712898
wvSetCursor -win $_nWave1 36846.336955
wvSetCursor -win $_nWave1 36735.033128
wvSetCursor -win $_nWave1 36512.425473
wvSetCursor -win $_nWave1 36401.121646
wvSetCursor -win $_nWave1 36305.718366
wvSetCursor -win $_nWave1 36369.320553
wvSetCursor -win $_nWave1 36246.091315
wvSetCursor -win $_nWave1 36150.688035
wvSetCursor -win $_nWave1 35975.782021
wvSetCursor -win $_nWave1 35816.776553
wvSetCursor -win $_nWave1 36595.903344
wvSetCursor -win $_nWave1 37136.521933
wvSetCursor -win $_nWave1 37184.223573
wvSetCursor -win $_nWave1 36626.114382
wvSetCursor -win $_nWave1 35910.589779
wvSetCursor -win $_nWave1 28977.951402
wvSetCursor -win $_nWave1 28437.332813
wvSetCursor -win $_nWave1 28930.249761
wvSetCursor -win $_nWave1 36021.893606
wvSetCursor -win $_nWave1 36435.307822
wvSetCursor -win $_nWave1 37023.628051
wvSetCursor -win $_nWave1 37134.931878
wvSetCursor -win $_nWave1 29125.031459
wvSetCursor -win $_nWave1 36025.868743
wvSetCursor -win $_nWave1 36964.001001
wvSetCursor -win $_nWave1 37091.205374
wvSetCursor -win $_nWave1 37186.608655
wvSetCursor -win $_nWave1 37138.907015
wvSetCursor -win $_nWave1 36614.188972
wvSetCursor -win $_nWave1 36677.791159
wvSetCursor -win $_nWave1 36359.780225
wvSetCursor -win $_nWave1 36534.686239
wvSetCursor -win $_nWave1 36645.990066
wvSetCursor -win $_nWave1 36693.691706
wvSetCursor -win $_nWave1 36471.084052
wvSetCursor -win $_nWave1 36582.387879
wvSetCursor -win $_nWave1 36661.890613
wvSetCursor -win $_nWave1 28570.897405
wvSetCursor -win $_nWave1 29032.013261
wvSetCursor -win $_nWave1 29032.013261
wvSetCursor -win $_nWave1 29032.013261
wvSetCursor -win $_nWave1 36075.955465
wvSetCursor -win $_nWave1 36616.574054
wvSetCursor -win $_nWave1 36680.176241
wvSetCursor -win $_nWave1 37109.491003
wvSetCursor -win $_nWave1 37109.491003
wvSetCursor -win $_nWave1 37173.093190
wvSelectSignal -win $_nWave1 {( "G3" 16 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 13)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*exmem*"
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvSetPosition -win $_nWave1 {("G3" 16)}
wvSetPosition -win $_nWave1 {("G3" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 16 )} 
wvSetPosition -win $_nWave1 {("G3" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 36743.778428
wvSetCursor -win $_nWave1 36743.778428
wvSetCursor -win $_nWave1 36680.176241
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G3" 18)}
wvSetPosition -win $_nWave1 {("G3" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 17 18 )} 
wvSetPosition -win $_nWave1 {("G3" 18)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 17 18 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvSetPosition -win $_nWave1 {("G3" 19)}
wvSetPosition -win $_nWave1 {("G3" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSetPosition -win $_nWave1 {("G3" 19)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 20)}
wvSetPosition -win $_nWave1 {("G3" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/ALU2exmem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSetPosition -win $_nWave1 {("G3" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 19)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 20)}
wvSetPosition -win $_nWave1 {("G3" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/ALU2exmem\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSetPosition -win $_nWave1 {("G3" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 19)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*next*"
wvSetPosition -win $_nWave1 {("G3" 20)}
wvSetPosition -win $_nWave1 {("G3" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSetPosition -win $_nWave1 {("G3" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 36552.971867
wvSetCursor -win $_nWave1 36616.574054
wvSelectSignal -win $_nWave1 {( "G3" 17 18 19 20 )} 
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSelectSignal -win $_nWave1 {( "G3" 17 18 19 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 16)}
wvSetCursor -win $_nWave1 36823.281162
wvSetCursor -win $_nWave1 37077.689910
wvSetCursor -win $_nWave1 37173.093190
wvSetCursor -win $_nWave1 36028.253825
wvSetCursor -win $_nWave1 36473.469134
wvSetCursor -win $_nWave1 37300.297564
wvSetCursor -win $_nWave1 36950.485536
wvSetCursor -win $_nWave1 36012.353278
wvSetCursor -win $_nWave1 36393.966400
wvSetCursor -win $_nWave1 37045.888816
wvSetCursor -win $_nWave1 37650.109592
wvSetCursor -win $_nWave1 37014.087723
wvSetCursor -win $_nWave1 36521.170774
wvSetCursor -win $_nWave1 36075.955465
wvSetCursor -win $_nWave1 29159.217634
wvSetCursor -win $_nWave1 37538.805765
wvSetCursor -win $_nWave1 37618.308499
wvSetCursor -win $_nWave1 38063.523807
wvSetCursor -win $_nWave1 38127.125994
wvSetCursor -win $_nWave1 38143.026541
wvSetCursor -win $_nWave1 38238.429822
wvSetCursor -win $_nWave1 38238.429822
wvSetCursor -win $_nWave1 38158.927088
wvSetCursor -win $_nWave1 36711.977335
wvSetCursor -win $_nWave1 36250.861479
wvSetCursor -win $_nWave1 36743.778428
wvSetCursor -win $_nWave1 36743.778428
wvSetCursor -win $_nWave1 37141.292097
wvSetCursor -win $_nWave1 37141.292097
wvSetCursor -win $_nWave1 36521.170774
wvSetCursor -win $_nWave1 36680.176241
wvSetCursor -win $_nWave1 45151.987543
wvSetCursor -win $_nWave1 45199.689183
wvSetCursor -win $_nWave1 36470.289024
wvSetCursor -win $_nWave1 36883.703240
wvSetCursor -win $_nWave1 37376.620188
wvSetCursor -win $_nWave1 37980.840964
wvSetCursor -win $_nWave1 45104.285903
wvSetCursor -win $_nWave1 36486.189571
wvSetCursor -win $_nWave1 36565.692305
wvSetCursor -win $_nWave1 37090.410347
wvSetCursor -win $_nWave1 37440.222375
wvSetCursor -win $_nWave1 37138.111987
wvSelectSignal -win $_nWave1 {( "G3" 16 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetCursor -win $_nWave1 45167.888090
wvSetCursor -win $_nWave1 45295.092464
wvSetCursor -win $_nWave1 45279.191917
wvSetCursor -win $_nWave1 45199.689183
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvExpandBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 48)}
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G3" 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 )} 
wvCreateBusOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 48)}
wvSetPosition -win $_nWave1 {("G3" 48)}
wvSetPosition -win $_nWave1 {("G3" 49)}
wvSetPosition -win $_nWave1 {("G3" 48)}
wvSetPosition -win $_nWave1 {("G3" 48)}
wvCreateBus -win $_nWave1 "WB<<2\[29:0\]" "/Final_tb/chip0/i_MIPS/WBdata\[31\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[30\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[29\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[28\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[27\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[26\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[25\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[24\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[23\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[22\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[21\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[20\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[19\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[18\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[17\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[16\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[15\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[14\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[13\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[12\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[11\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[10\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[9\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[8\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[7\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[6\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[5\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[4\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[3\]" \
           "/Final_tb/chip0/i_MIPS/WBdata\[2\]"
wvSetPosition -win $_nWave1 {("G3" 49)}
wvSetPosition -win $_nWave1 {("G3" 49)}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvCollapseBus -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetCursor -win $_nWave1 37122.211441
wvSetCursor -win $_nWave1 37201.714174
wvSetCursor -win $_nWave1 37201.714174
wvSetCursor -win $_nWave1 37042.708707 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 37138.111987
wvSetCursor -win $_nWave1 37519.725109
wvSetCursor -win $_nWave1 38235.249712
wvSetCursor -win $_nWave1 38203.448619
wvSetCursor -win $_nWave1 38203.448619
wvSetCursor -win $_nWave1 37344.819095
wvSetCursor -win $_nWave1 37424.321829
wvSetCursor -win $_nWave1 36995.007067
wvSetCursor -win $_nWave1 37853.636591
wvSetCursor -win $_nWave1 45199.689183
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 39189.282516 -snap {("G1" 6)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 31546.684727 47383.629278
wvSetCursor -win $_nWave1 45271.420687
wvSetCursor -win $_nWave1 45215.982141
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvExpandBus -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 40)}
wvScrollDown -win $_nWave1 4
wvScrollUp -win $_nWave1 9
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCollapseBus -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetCursor -win $_nWave1 45215.982141
wvSetCursor -win $_nWave1 36241.405571
wvSetCursor -win $_nWave1 36185.967025
wvSetCursor -win $_nWave1 36112.048964
wvSetCursor -win $_nWave1 45213.210214
wvSetCursor -win $_nWave1 45102.333123
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 45590.192325
wvSetCursor -win $_nWave1 45830.426023
wvSetCursor -win $_nWave1 45701.069416
wvSetCursor -win $_nWave1 45571.712810
wvSetCursor -win $_nWave1 44998.847837
wvSetCursor -win $_nWave1 36472.399511
wvSetCursor -win $_nWave1 36952.866907
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 37784.445092
wvSetCursor -win $_nWave1 37618.129455
wvSetCursor -win $_nWave1 37618.129455
wvSetCursor -win $_nWave1 38117.076366
wvSetCursor -win $_nWave1 44899.058455
wvSetCursor -win $_nWave1 37026.784968
wvSetCursor -win $_nWave1 37507.252364
wvSetCursor -win $_nWave1 45157.771668
wvSetCursor -win $_nWave1 44936.017486
wvSetCursor -win $_nWave1 47152.635337
wvSetPosition -win $_nWave1 {("G3" 16)}
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSetPosition -win $_nWave1 {("G3" 16)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G3" 17)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetCursor -win $_nWave1 45009.011571
wvSetCursor -win $_nWave1 45637.315089
wvSetCursor -win $_nWave1 45341.642845
wvSetCursor -win $_nWave1 45674.274119
wvSetCursor -win $_nWave1 47577.664188
wvSetCursor -win $_nWave1 47614.623218
wvSetCursor -win $_nWave1 47688.541279
wvSetCursor -win $_nWave1 45378.601875
wvSetCursor -win $_nWave1 45526.437997
wvSetCursor -win $_nWave1 45600.356058
wvSetCursor -win $_nWave1 45914.507817
wvSetCursor -win $_nWave1 46025.384908
wvSetCursor -win $_nWave1 46080.823454
wvSetCursor -win $_nWave1 46579.770365
wvSetCursor -win $_nWave1 46727.606487
wvSetCursor -win $_nWave1 46653.688426
wvSetCursor -win $_nWave1 47134.155822
wvSetCursor -win $_nWave1 47134.155822
wvSetCursor -win $_nWave1 47189.594368
wvSetCursor -win $_nWave1 47078.717276
wvSetCursor -win $_nWave1 47171.114852
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetSignalFilter -win $_nWave1 "*next*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 18)}
wvSetPosition -win $_nWave1 {("G3" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSetPosition -win $_nWave1 {("G3" 18)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G3" 16 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 47633.102733
wvSetCursor -win $_nWave1 47171.114852
wvSetCursor -win $_nWave1 47429.828066
wvSetCursor -win $_nWave1 47540.705157
wvSetCursor -win $_nWave1 47596.143703
wvSetCursor -win $_nWave1 47725.500309
wvSetCursor -win $_nWave1 47651.582248
wvSetCursor -win $_nWave1 47651.582248
wvSetCursor -win $_nWave1 48279.885766
wvSetCursor -win $_nWave1 48279.885766
wvSetCursor -win $_nWave1 48113.570129
wvSetCursor -win $_nWave1 48150.529160
wvSetCursor -win $_nWave1 47633.102733
wvSetCursor -win $_nWave1 47633.102733
wvSetCursor -win $_nWave1 48237.382881
wvSetCursor -win $_nWave1 48200.423851
wvSetCursor -win $_nWave1 53651.880843
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 57589.865538
wvSetCursor -win $_nWave1 57589.865538
wvSetCursor -win $_nWave1 51898.174848
wvSetCursor -win $_nWave1 52452.560305
wvSetCursor -win $_nWave1 52600.396427
wvSetCursor -win $_nWave1 52618.875942
wvSetCursor -win $_nWave1 52729.753033
wvSetCursor -win $_nWave1 52711.273518
wvSetCursor -win $_nWave1 52711.273518
wvSetCursor -win $_nWave1 52489.519335
wvSetCursor -win $_nWave1 52212.326607
wvSetCursor -win $_nWave1 52748.232548
wvSetCursor -win $_nWave1 53080.863822
wvSetCursor -win $_nWave1 53080.863822
wvSetCursor -win $_nWave1 53080.863822
wvSetCursor -win $_nWave1 52082.970000
wvSetCursor -win $_nWave1 52452.560305
wvSetCursor -win $_nWave1 53043.904792
wvSetCursor -win $_nWave1 53376.536066
wvSetCursor -win $_nWave1 57331.152325
wvSetCursor -win $_nWave1 57405.070386
wvSetCursor -win $_nWave1 57571.386023
wvSetCursor -win $_nWave1 53210.220429
wvSetCursor -win $_nWave1 53228.699944
wvSetCursor -win $_nWave1 53173.261399
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvSetPosition -win $_nWave1 {("G3" 21)}
wvSetPosition -win $_nWave1 {("G3" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 19 20 21 )} 
wvSetPosition -win $_nWave1 {("G3" 21)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 52046.010970
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSetCursor -win $_nWave1 52553.070091
wvSetCursor -win $_nWave1 52700.277399
wvSetCursor -win $_nWave1 52626.673745
wvSetCursor -win $_nWave1 52626.673745
wvSetCursor -win $_nWave1 53197.102065
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*next*"
wvSetPosition -win $_nWave1 {("G3" 23)}
wvSetPosition -win $_nWave1 {("G3" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 22 23 )} 
wvSetPosition -win $_nWave1 {("G3" 23)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvSetPosition -win $_nWave1 {("G3" 24)}
wvSetPosition -win $_nWave1 {("G3" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetPosition -win $_nWave1 {("G3" 24)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "ALU*"
wvSetPosition -win $_nWave1 {("G3" 26)}
wvSetPosition -win $_nWave1 {("G3" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 26 )} 
wvSetPosition -win $_nWave1 {("G3" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 25 26 )} 
wvSelectSignal -win $_nWave1 {( "G3" 25 26 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 24)}
wvSelectGroup -win $_nWave1 {G4}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*readreg*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 25)}
wvSetPosition -win $_nWave1 {("G3" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg_forward\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetPosition -win $_nWave1 {("G3" 25)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*next_sign_ext"
wvSetPosition -win $_nWave1 {("G3" 26)}
wvSetPosition -win $_nWave1 {("G3" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg_forward\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetPosition -win $_nWave1 {("G3" 26)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSetCursor -win $_nWave1 53161.717587
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "ALU*"
wvSetPosition -win $_nWave1 {("G3" 28)}
wvSetPosition -win $_nWave1 {("G3" 28)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg_forward\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 27 28 )} 
wvSetPosition -win $_nWave1 {("G3" 28)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 8
wvSetCursor -win $_nWave1 52002.236802
wvSetCursor -win $_nWave1 52020.641259
wvSetCursor -win $_nWave1 52204.685828
wvSetCursor -win $_nWave1 52186.281371
wvSetCursor -win $_nWave1 52112.663543
wvSetCursor -win $_nWave1 52223.090285
wvSetCursor -win $_nWave1 52499.157139
wvSetCursor -win $_nWave1 52609.583880
wvSetCursor -win $_nWave1 53345.762157
wvSetCursor -win $_nWave1 53161.717587
wvSetCursor -win $_nWave1 53180.122044
wvSetCursor -win $_nWave1 65087.805666
wvSetCursor -win $_nWave1 65106.210123
wvSetCursor -win $_nWave1 65124.614580
wvSetCursor -win $_nWave1 53677.042381
wvSetCursor -win $_nWave1 65161.423493
wvSetCursor -win $_nWave1 57560.382789
wvSetCursor -win $_nWave1 66656.785617
wvSetCursor -win $_nWave1 66693.594531
wvSetCursor -win $_nWave1 66693.594531
wvSetCursor -win $_nWave1 66583.167790
wvSetCursor -win $_nWave1 66601.572247
wvSetCursor -win $_nWave1 66619.976704
wvSetCursor -win $_nWave1 66638.381160
wvSetCursor -win $_nWave1 57399.343791
wvSetCursor -win $_nWave1 57399.343791
wvSetCursor -win $_nWave1 58043.499783
wvSetCursor -win $_nWave1 64853.148840
wvSetCursor -win $_nWave1 65423.687004
wvSetCursor -win $_nWave1 66159.865281
wvSetCursor -win $_nWave1 66178.269738
wvSetCursor -win $_nWave1 66215.078652
wvSetCursor -win $_nWave1 66123.056367
wvSetCursor -win $_nWave1 58172.330981
wvSetCursor -win $_nWave1 66822.425730
wvSetCursor -win $_nWave1 66822.425730
wvSetCursor -win $_nWave1 66767.212359
wvSetCursor -win $_nWave1 66748.807902
wvSetCursor -win $_nWave1 66693.594531
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 64912.963325
wvSetCursor -win $_nWave1 73693.729717
wvSetCursor -win $_nWave1 65025.230512
wvSetCursor -win $_nWave1 66755.249462
wvSetCursor -win $_nWave1 65558.959763
wvSetCursor -win $_nWave1 73712.134174
wvSetCursor -win $_nWave1 66644.822720
wvSetCursor -win $_nWave1 66644.822720
wvSetCursor -win $_nWave1 66037.475642
wvSetCursor -win $_nWave1 66571.204893
wvSetCursor -win $_nWave1 66571.204893
wvSetCursor -win $_nWave1 73656.920803
wvSetCursor -win $_nWave1 73472.876234
wvSetCursor -win $_nWave1 74006.605485
wvSetCursor -win $_nWave1 74043.414399
wvSetCursor -win $_nWave1 74153.841140
wvSetCursor -win $_nWave1 74640.639025
wvSetCursor -win $_nWave1 76701.938199
wvSetCursor -win $_nWave1 75763.310897
wvSetCursor -win $_nWave1 75763.310897
wvSetCursor -win $_nWave1 75616.075242
wvSetCursor -win $_nWave1 75634.479699
wvSetCursor -win $_nWave1 75100.750448
wvSetCursor -win $_nWave1 77088.431795
wvSetCursor -win $_nWave1 77180.454079
wvSetCursor -win $_nWave1 77180.454079
wvSetCursor -win $_nWave1 75489.084489
wvSetCursor -win $_nWave1 77808.046060
wvSetCursor -win $_nWave1 77752.832689
wvSetCursor -win $_nWave1 77697.619318
wvSetCursor -win $_nWave1 77697.619318
wvSetCursor -win $_nWave1 84636.099574
wvSetCursor -win $_nWave1 84544.077289
wvSetCursor -win $_nWave1 84562.481746
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 76908.401129
wvSetCursor -win $_nWave1 85671.362632
wvSetCursor -win $_nWave1 86076.373458
wvSetCursor -win $_nWave1 86131.602207
wvSetCursor -win $_nWave1 93053.605412
wvSetCursor -win $_nWave1 93108.834161
wvSetCursor -win $_nWave1 93219.291659
wvSetCursor -win $_nWave1 93127.243744
wvSetCursor -win $_nWave1 85487.266803
wvSetCursor -win $_nWave1 94066.132476
wvSetCursor -win $_nWave1 94636.829549
wvSetCursor -win $_nWave1 85616.133884
wvSetCursor -win $_nWave1 94176.589974
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 85027.027228
wvSetCursor -win $_nWave1 85155.894309
wvSetCursor -win $_nWave1 93145.653327
wvSetCursor -win $_nWave1 94139.770808
wvSetCursor -win $_nWave1 94231.818723
wvSetCursor -win $_nWave1 94250.228306
wvSetCursor -win $_nWave1 94213.409140
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 85468.857220
wvSetCursor -win $_nWave1 85947.506377
wvSetCursor -win $_nWave1 86168.421373
wvSetCursor -win $_nWave1 92961.557497
wvSetCursor -win $_nWave1 93072.014995
wvSetCursor -win $_nWave1 93108.834161
wvSetCursor -win $_nWave1 92961.557497
wvSetCursor -win $_nWave1 93016.786246
wvSetCursor -win $_nWave1 93016.786246
wvSetCursor -win $_nWave1 93108.834161
wvSetCursor -win $_nWave1 93440.206655
wvSetCursor -win $_nWave1 93532.254570
wvSetCursor -win $_nWave1 93587.483318
wvSetCursor -win $_nWave1 93587.483318
wvSetCursor -win $_nWave1 93587.483318
wvSetCursor -win $_nWave1 93587.483318
wvSetCursor -win $_nWave1 93587.483318
wvSetCursor -win $_nWave1 92869.509582
wvSetCursor -win $_nWave1 93440.206655
wvSetCursor -win $_nWave1 93532.254570
wvSetCursor -win $_nWave1 94084.542059
wvSetCursor -win $_nWave1 94102.951642
wvSetCursor -win $_nWave1 94728.877464
wvSetCursor -win $_nWave1 94728.877464
wvSetCursor -win $_nWave1 94581.600800
wvSetCursor -win $_nWave1 94673.648715
wvSetCursor -win $_nWave1 94692.058298
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 89928.935185 109047.685185
wvSetCursor -win $_nWave1 109002.164352
wvSetCursor -win $_nWave1 109019.866898
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 109479.189815
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 95165.468750
wvSetCursor -win $_nWave1 95444.265046
wvSetCursor -win $_nWave1 94172.256944
wvSetCursor -win $_nWave1 96158.680556
wvSetCursor -win $_nWave1 94137.407407
wvSetCursor -win $_nWave1 94520.752315
wvSetCursor -win $_nWave1 94625.300926
wvSetCursor -win $_nWave1 96576.875000
wvSetCursor -win $_nWave1 96646.574074
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvScrollDown -win $_nWave1 8
wvSetPosition -win $_nWave1 {("G3" 28)}
wvScrollUp -win $_nWave1 8
wvSetCursor -win $_nWave1 95113.364501
wvSetCursor -win $_nWave1 97239.272706
wvSetCursor -win $_nWave1 97221.847229
wvSetCursor -win $_nWave1 97169.570797
wvSetCursor -win $_nWave1 101038.026711
wvSetCursor -win $_nWave1 101038.026711
wvSetCursor -win $_nWave1 97082.443412
wvSetCursor -win $_nWave1 97186.996274
wvSetCursor -win $_nWave1 95165.640932
wvSetCursor -win $_nWave1 95636.128814
wvSetCursor -win $_nWave1 96246.020512
wvSetCursor -win $_nWave1 96124.042172
wvSetCursor -win $_nWave1 96211.169557
wvSetCursor -win $_nWave1 96158.893126
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetCursor -win $_nWave1 96158.893126
wvSetCursor -win $_nWave1 101003.175756
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format Hex
wvZoom -win $_nWave1 92986.691042 93073.818427
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 98235.270628 109625.740331
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 96424.102298
wvSetCursor -win $_nWave1 96424.102298
wvSetCursor -win $_nWave1 97122.125511
wvSetCursor -win $_nWave1 97122.125511
wvSetCursor -win $_nWave1 97122.125511
wvSetCursor -win $_nWave1 102748.615652
wvSetCursor -win $_nWave1 102727.463433
wvSetCursor -win $_nWave1 102769.767870
wvSetCursor -win $_nWave1 102769.767870
wvSetCursor -win $_nWave1 102515.941248
wvSetCursor -win $_nWave1 102706.311215
wvSetCursor -win $_nWave1 102664.006778
wvSetCursor -win $_nWave1 101077.590384
wvSetCursor -win $_nWave1 101627.548067
wvSetCursor -win $_nWave1 101691.004723
wvSetCursor -win $_nWave1 101585.243630
wvSetCursor -win $_nWave1 101606.395849
wvSetCursor -win $_nWave1 101669.852505
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvScrollDown -win $_nWave1 8
wvSetPosition -win $_nWave1 {("G3" 28)}
wvScrollUp -win $_nWave1 8
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 101087.108883
wvSetCursor -win $_nWave1 101087.108883
wvSetCursor -win $_nWave1 96200.946392
wvSetCursor -win $_nWave1 97122.654316
wvSetCursor -win $_nWave1 103002.971080
wvSetCursor -win $_nWave1 103172.188829
wvSetCursor -win $_nWave1 103626.432723
wvSetCursor -win $_nWave1 103679.313269
wvSetCursor -win $_nWave1 104165.814296
wvSetCursor -win $_nWave1 104641.739214
wvSetCursor -win $_nWave1 104684.043651
wvSetCursor -win $_nWave1 106682.928307
wvSetCursor -win $_nWave1 106164.698952
wvSetCursor -win $_nWave1 106735.808853
wvSetCursor -win $_nWave1 106704.080525
wvSetCursor -win $_nWave1 106704.080525
wvSetCursor -win $_nWave1 107158.853225
wvSetCursor -win $_nWave1 107624.202033
wvSetCursor -win $_nWave1 107708.810908
wvSetCursor -win $_nWave1 107655.930361
wvSetCursor -win $_nWave1 106418.525575
wvSetCursor -win $_nWave1 107031.939913
wvZoom -win $_nWave1 107497.288722 107560.745378
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 106567.386522
wvSetCursor -win $_nWave1 107080.224713
wvSetCursor -win $_nWave1 107630.771594
wvSetCursor -win $_nWave1 108053.108928
wvSetCursor -win $_nWave1 108611.197547
wvSetCursor -win $_nWave1 108686.614928
wvSetCursor -win $_nWave1 109282.412238
wvSetCursor -win $_nWave1 109229.620071
wvSetCursor -win $_nWave1 109206.994857
wvSetCursor -win $_nWave1 108694.156666
wvSetCursor -win $_nWave1 107133.016880
wvSetCursor -win $_nWave1 107170.725570
wvSetCursor -win $_nWave1 108234.110642
wvSetCursor -win $_nWave1 108234.110642
wvSetCursor -win $_nWave1 108128.526309
wvScrollDown -win $_nWave1 8
wvScrollUp -win $_nWave1 6
wvSetCursor -win $_nWave1 108136.068047
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 107698.647237
wvSetCursor -win $_nWave1 107140.558618
wvSetCursor -win $_nWave1 107630.771594
wvSetCursor -win $_nWave1 108113.442832
wvSetCursor -win $_nWave1 108136.068047
wvSetCursor -win $_nWave1 108136.068047
wvSetCursor -win $_nWave1 108166.234999
wvSetCursor -win $_nWave1 105647.294474
wvSetCursor -win $_nWave1 106031.923117
wvSetCursor -win $_nWave1 106567.386522
wvSetCursor -win $_nWave1 107102.849927
wvSetCursor -win $_nWave1 107615.688118
wvSetCursor -win $_nWave1 107668.480285
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSetCursor -win $_nWave1 107668.480285
wvSetCursor -win $_nWave1 108226.575804
wvSetCursor -win $_nWave1 108196.850454
wvSetCursor -win $_nWave1 108055.655040
wvSetCursor -win $_nWave1 107698.950839
wvSetCursor -win $_nWave1 107691.519501
wvSetCursor -win $_nWave1 107178.757211
wvSetCursor -win $_nWave1 107698.950839
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 56419.487649 129918.344007
wvZoom -win $_nWave1 100532.250477 129044.158159
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 107660.879545
wvSetCursor -win $_nWave1 108078.254223
wvSetCursor -win $_nWave1 107765.223215
wvSetCursor -win $_nWave1 107660.879545
wvSetCursor -win $_nWave1 108260.855645
wvSetCursor -win $_nWave1 108626.058488
wvSetCursor -win $_nWave1 108626.058488
wvSetCursor -win $_nWave1 107204.375991
wvSetCursor -win $_nWave1 107113.075281
wvSetCursor -win $_nWave1 107621.750669
wvSetCursor -win $_nWave1 108052.168306
wvSetCursor -win $_nWave1 108599.972570
wvSetCursor -win $_nWave1 109017.347248
wvSetCursor -win $_nWave1 109239.077546
wvSetCursor -win $_nWave1 109199.948670
wvSetCursor -win $_nWave1 109604.280389
wvSetCursor -win $_nWave1 109173.862753
wvSetCursor -win $_nWave1 115147.537829
wvSetCursor -win $_nWave1 108717.359199
wvSetCursor -win $_nWave1 108717.359199
wvSetCursor -win $_nWave1 108678.230323
wvSetCursor -win $_nWave1 115721.428012
wvSetCursor -win $_nWave1 115708.385053
wvSetCursor -win $_nWave1 115708.385053
wvSetCursor -win $_nWave1 115056.237119
wvSetCursor -win $_nWave1 115108.408953
wvSetCursor -win $_nWave1 121706.189603
wvSetCursor -win $_nWave1 121706.189603
wvSetCursor -win $_nWave1 121706.189603
wvSetCursor -win $_nWave1 131664.488558
wvSetCursor -win $_nWave1 131664.488558
wvSetCursor -win $_nWave1 131664.488558
wvSetCursor -win $_nWave1 138130.535325
wvSetCursor -win $_nWave1 144633.102377
wvSetCursor -win $_nWave1 151116.757138
wvSetCursor -win $_nWave1 161226.354414
wvSetCursor -win $_nWave1 161187.225538
wvSetCursor -win $_nWave1 161187.225538
wvSetCursor -win $_nWave1 167539.146416
wvSetCursor -win $_nWave1 167578.275292
wvSetCursor -win $_nWave1 167617.404168
wvSetCursor -win $_nWave1 174131.057735
wvSetCursor -win $_nWave1 180623.842567
wvSetCursor -win $_nWave1 181080.346121
wvSetCursor -win $_nWave1 180558.627774
wvSetCursor -win $_nWave1 179971.694633
wvSetCursor -win $_nWave1 180649.928485
wvSetCursor -win $_nWave1 181093.389080
wvSetCursor -win $_nWave1 181810.751808
wvSetCursor -win $_nWave1 181667.279262
wvSetCursor -win $_nWave1 182058.568023
wvSetCursor -win $_nWave1 182110.739857
wvSetCursor -win $_nWave1 182110.739857
wvSetCursor -win $_nWave1 182110.739857
wvSetCursor -win $_nWave1 182202.040568
wvSetCursor -win $_nWave1 182645.501163
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "bjaddr"
wvGetSignalClose -win $_nWave1
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
wvScrollDown -win $_nWave1 0
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*b*"
wvSetPosition -win $_nWave1 {("G3" 29)}
wvSetPosition -win $_nWave1 {("G3" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg_forward\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bjaddr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSetPosition -win $_nWave1 {("G3" 29)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSetRadix -win $_nWave1 -format Bin
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 28)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "sign"
wvGetSignalSetSignalFilter -win $_nWave1 "sign*"
wvSetPosition -win $_nWave1 {("G3" 29)}
wvSetPosition -win $_nWave1 {("G3" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg_forward\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/sign_ext\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSetPosition -win $_nWave1 {("G3" 29)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zifidreg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "PC_4"
wvSetPosition -win $_nWave1 {("G3" 30)}
wvSetPosition -win $_nWave1 {("G3" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/forwardA\[100\]} \
{/Final_tb/chip0/i_MIPS/forwardB\[100\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_exmem_r} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRs_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/next_ALUresult\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/ctrl\[300\]} \
{/Final_tb/chip0/i_MIPS/zalu/x\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zalu/y\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_readreg2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUSrc_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg_forward\[31:0\]} \
{/Final_tb/chip0/i_MIPS/next_sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ALUin2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/sign_ext\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 30 )} 
wvSetPosition -win $_nWave1 {("G3" 30)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 30 )} 
wvSelectSignal -win $_nWave1 {( "G3" 30 )} 
wvSetRadix -win $_nWave1 -format Bin
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 182610.387603 -snap {("G3" 16)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 182740.883122
wvSetCursor -win $_nWave1 182675.635362
wvSetCursor -win $_nWave1 182675.635362
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 30 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 29)}
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 186556.572120
wvSetCursor -win $_nWave1 186674.018088
wvSetCursor -win $_nWave1 187274.297479
wvSetCursor -win $_nWave1 187169.901063
wvSetCursor -win $_nWave1 191139.647768
wvSetCursor -win $_nWave1 190915.195474
wvSetCursor -win $_nWave1 196578.701032
wvSetCursor -win $_nWave1 196656.998344
wvSetCursor -win $_nWave1 196656.998344
wvSetCursor -win $_nWave1 191019.591890
wvSetCursor -win $_nWave1 191019.591890
wvSetCursor -win $_nWave1 191685.119041
wvScrollDown -win $_nWave1 9
wvSelectSignal -win $_nWave1 {( "G3" 11 12 13 14 15 16 17 18 19 20 21 22 23 24 \
           25 26 27 28 29 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*stall*"
wvSetPosition -win $_nWave1 {("G3" 16)}
wvSetPosition -win $_nWave1 {("G3" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_addr\[29:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/zalu/out\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/stall} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/stall_exmem} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/stall_memwb} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 11 12 13 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G3" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 197181.316099 -snap {("G4" 0)}
