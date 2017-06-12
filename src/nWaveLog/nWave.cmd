wvResizeWindow -win $_nWave1 4 9 1366 705
wvRestoreSignal -win $_nWave1 \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/final.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 10445.296824
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8056.372479
wvSetCursor -win $_nWave1 8556.147446
wvSetCursor -win $_nWave1 12414.410196
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 18071.862830
wvSetCursor -win $_nWave1 18491.673803
wvSetCursor -win $_nWave1 18591.628797
wvSetCursor -win $_nWave1 18591.628797
wvSetCursor -win $_nWave1 18951.466773
wvSetCursor -win $_nWave1 18971.457772
wvSetCursor -win $_nWave1 19111.394763
wvSetCursor -win $_nWave1 19711.124724
wvSetCursor -win $_nWave1 19431.250742
wvSetCursor -win $_nWave1 19671.142727
wvSetCursor -win $_nWave1 14153.627084
wvSetCursor -win $_nWave1 19651.151728
wvSetCursor -win $_nWave1 13553.897123
wvSetCursor -win $_nWave1 14193.609081
wvSetCursor -win $_nWave1 14113.645086
wvSetCursor -win $_nWave1 14113.645086
wvSetCursor -win $_nWave1 17991.898835
wvSetCursor -win $_nWave1 18396.716559
wvSetCursor -win $_nWave1 18636.608544
wvSetCursor -win $_nWave1 19236.338505
wvSetCursor -win $_nWave1 19176.365509
wvSetCursor -win $_nWave1 18516.662551
wvSetCursor -win $_nWave1 18696.581540
wvScrollDown -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 4 5 6 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSelectGroup -win $_nWave1 {G5}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSelectGroup -win $_nWave1 {G6}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSetPosition -win $_nWave1 {("G3" 22)}
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 16 17 18 19 20 21 22 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 15)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSetPosition -win $_nWave1 {("G3" 19)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetSignalFilter -win $_nWave1 "*readrerg*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*readreg*"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg1_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg2_idex_r} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSetPosition -win $_nWave1 {("G3" 21)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSetCursor -win $_nWave1 19831.070717
wvSetCursor -win $_nWave1 20790.638654
wvSetCursor -win $_nWave1 20970.557643
wvSetCursor -win $_nWave1 22329.945555
wvSetCursor -win $_nWave1 24209.099433
wvSetCursor -win $_nWave1 26348.136295
wvSetCursor -win $_nWave1 28427.200160
wvSetCursor -win $_nWave1 30606.219019
wvSetCursor -win $_nWave1 36083.752665
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/sign_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvExpandBus -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvCollapseBus -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvExpandBus -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvCollapseBus -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvExpandBus -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvCollapseBus -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*readreg*"
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/sign_r\[100\]} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvScrollDown -win $_nWave1 0
wvSetPosition -win $_nWave1 {("G4" 4)}
wvExpandBus -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 37)}
wvScrollUp -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvCollapseBus -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvExpandBus -win $_nWave1 {("G4" 5)}
wvScrollUp -win $_nWave1 11
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvCollapseBus -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
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
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 18441.696306
wvSetCursor -win $_nWave1 18521.660301
wvSetCursor -win $_nWave1 18601.624296
wvSetCursor -win $_nWave1 35928.822425
wvSetCursor -win $_nWave1 35968.804422
wvScrollDown -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G4" 2 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectGroup -win $_nWave1 {G4}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G3" 19)}
wvSelectGroup -win $_nWave1 {G5}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 19)}
wvSetPosition -win $_nWave1 {("G3" 19)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 ""
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSetPosition -win $_nWave1 {("G3" 21)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 36328.642399
wvSetCursor -win $_nWave1 36568.534383
wvSetCursor -win $_nWave1 35888.840427
wvSetCursor -win $_nWave1 36508.561387
wvSetCursor -win $_nWave1 39887.040169
wvSetCursor -win $_nWave1 40426.797134
wvSetCursor -win $_nWave1 40626.707121
wvSetCursor -win $_nWave1 40626.707121
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 19316.302500
wvSetCursor -win $_nWave1 19096.401514
wvSetCursor -win $_nWave1 19756.104471
wvSetCursor -win $_nWave1 19756.104471
wvSetCursor -win $_nWave1 19596.176482
wvSetCursor -win $_nWave1 18976.455522
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 19696.131475
wvSetCursor -win $_nWave1 19556.194484
wvSetCursor -win $_nWave1 19696.131475
wvSetCursor -win $_nWave1 19616.167480
wvSetCursor -win $_nWave1 19836.068466
wvSetCursor -win $_nWave1 19836.068466
wvSetCursor -win $_nWave1 19561.192234
wvSetCursor -win $_nWave1 19621.165230
wvSetCursor -win $_nWave1 19621.165230
wvSetCursor -win $_nWave1 19461.237241
wvSetCursor -win $_nWave1 19701.129225
wvSetCursor -win $_nWave1 19621.165230
wvSetCursor -win $_nWave1 19701.129225
wvSetCursor -win $_nWave1 19601.174231
wvSetCursor -win $_nWave1 19641.156229
wvSetCursor -win $_nWave1 41196.450584
wvSetCursor -win $_nWave1 41096.495590
wvSetCursor -win $_nWave1 41096.495590
wvSetCursor -win $_nWave1 41096.495590
wvSetCursor -win $_nWave1 40936.567601
wvSetCursor -win $_nWave1 41076.504592
wvSetCursor -win $_nWave1 40716.666615
wvSetCursor -win $_nWave1 41016.531595
wvSetCursor -win $_nWave1 41156.468586
wvSetCursor -win $_nWave1 40976.549598
wvSetCursor -win $_nWave1 41076.504592
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 23 )} 
wvSetPosition -win $_nWave1 {("G3" 23)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 41076.504592
wvSetCursor -win $_nWave1 35968.804422
wvSetCursor -win $_nWave1 36148.723411
wvSetCursor -win $_nWave1 36008.786420
wvScrollDown -win $_nWave1 2
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "readreg*"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetPosition -win $_nWave1 {("G3" 25)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 39387.265201 -snap {("G3" 12)}
wvSetCursor -win $_nWave1 35848.858430
wvSetCursor -win $_nWave1 36048.768417
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "stall*"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetPosition -win $_nWave1 {("G3" 26)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*idex*"
wvSetPosition -win $_nWave1 {("G3" 27)}
wvSetPosition -win $_nWave1 {("G3" 27)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetPosition -win $_nWave1 {("G3" 27)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 41496.315564 -snap {("G3" 17)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 35978.799922
wvSetCursor -win $_nWave1 35199.150972 -snap {("G3" 20)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvScrollDown -win $_nWave1 4
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*_mul*"
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
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/HI_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_mul\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 28 29 )} 
wvSetPosition -win $_nWave1 {("G3" 29)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 36053.766167
wvSetCursor -win $_nWave1 36153.721160
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*readerg*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*readreg*"
wvSetPosition -win $_nWave1 {("G3" 31)}
wvSetPosition -win $_nWave1 {("G3" 31)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/HI_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg1_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_w\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 31 )} 
wvSetPosition -win $_nWave1 {("G3" 31)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 35953.811173
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 30 31 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 29)}
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetPosition -win $_nWave1 {("G3" 27)}
wvExpandBus -win $_nWave1 {("G3" 27)}
wvSetPosition -win $_nWave1 {("G3" 35)}
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetPosition -win $_nWave1 {("G3" 27)}
wvCollapseBus -win $_nWave1 {("G3" 27)}
wvSetPosition -win $_nWave1 {("G3" 27)}
wvSetPosition -win $_nWave1 {("G3" 29)}
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
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G3" 31)}
wvSetPosition -win $_nWave1 {("G3" 31)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/HI_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg1_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_w\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 31 )} 
wvSetPosition -win $_nWave1 {("G3" 31)}
wvGetSignalClose -win $_nWave1
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
wvSetCursor -win $_nWave1 40811.623858
wvSetCursor -win $_nWave1 40811.623858
wvSetCursor -win $_nWave1 41311.398826
wvSetCursor -win $_nWave1 41111.488839
wvSetCursor -win $_nWave1 41131.479838
wvSetCursor -win $_nWave1 39972.001913
wvSetCursor -win $_nWave1 40571.731874
wvSetCursor -win $_nWave1 40611.713871
wvSetCursor -win $_nWave1 41111.488839
wvSetCursor -win $_nWave1 40451.785882
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 40191.902898
wvSetCursor -win $_nWave1 40031.974909
wvSetCursor -win $_nWave1 40031.974909
wvSetCursor -win $_nWave1 40031.974909
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 40031.974909
wvSetCursor -win $_nWave1 40111.938904
wvSetCursor -win $_nWave1 39952.010914
wvSetCursor -win $_nWave1 40091.947905
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 40651.695869
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
wvSetCursor -win $_nWave1 41091.497840
wvSetCursor -win $_nWave1 41091.497840
wvSetCursor -win $_nWave1 45494.515305
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 40941.565350 47978.396895
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 46190.570316
wvSetCursor -win $_nWave1 45517.189307
wvSetCursor -win $_nWave1 55109.501781
wvSetCursor -win $_nWave1 71620.804123
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
wvSetCursor -win $_nWave1 52601.157522
wvSetCursor -win $_nWave1 45611.462648
wvSetCursor -win $_nWave1 41638.514695
wvSetCursor -win $_nWave1 41019.004166
wvSetCursor -win $_nWave1 41678.917555
wvSetCursor -win $_nWave1 45517.189307
wvSetCursor -win $_nWave1 46055.894114
wvSetCursor -win $_nWave1 46136.699835
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
wvSetCursor -win $_nWave1 46136.699835
wvSetCursor -win $_nWave1 46712.440598
wvSetCursor -win $_nWave1 46712.440598
wvSetCursor -win $_nWave1 46443.088194
wvSetCursor -win $_nWave1 46564.296776
wvSetCursor -win $_nWave1 46631.634877
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 ""
wvSetPosition -win $_nWave1 {("G3" 33)}
wvSetPosition -win $_nWave1 {("G3" 33)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/HI_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg1_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/LO_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 32 33 )} 
wvSetPosition -win $_nWave1 {("G3" 33)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 33 )} 
wvSelectSignal -win $_nWave1 {( "G3" 32 )} 
wvSelectSignal -win $_nWave1 {( "G3" 33 )} 
wvSelectSignal -win $_nWave1 {( "G3" 33 )} 
wvExpandBus -win $_nWave1 {("G3" 33)}
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G3" 33 )} 
wvSetPosition -win $_nWave1 {("G3" 33)}
wvCollapseBus -win $_nWave1 {("G3" 33)}
wvSetPosition -win $_nWave1 {("G3" 33)}
wvSelectSignal -win $_nWave1 {( "G3" 33 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvSetPosition -win $_nWave1 {("G3" 35)}
wvSetPosition -win $_nWave1 {("G3" 35)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/HI_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg1_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/multiplicand\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/LO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 35 )} 
wvSetPosition -win $_nWave1 {("G3" 35)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvSetPosition -win $_nWave1 {("G3" 36)}
wvSetPosition -win $_nWave1 {("G3" 36)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/Funct_idex_r\[500\]} \
{/Final_tb/chip0/i_MIPS/HI_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_mul\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg1_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/multiplicand\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/mul_iter_r\[500\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 36 )} 
wvSetPosition -win $_nWave1 {("G3" 36)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 36 )} 
wvExpandBus -win $_nWave1 {("G3" 36)}
wvSelectSignal -win $_nWave1 {( "G3" 36 )} 
wvSetPosition -win $_nWave1 {("G3" 36)}
wvCollapseBus -win $_nWave1 {("G3" 36)}
wvSetPosition -win $_nWave1 {("G3" 36)}
wvSelectSignal -win $_nWave1 {( "G3" 36 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 35493.912987
wvSetCursor -win $_nWave1 35601.653949
wvSetCursor -win $_nWave1 36005.682554
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 36005.682554
wvSetCursor -win $_nWave1 36005.682554
wvSetCursor -win $_nWave1 66227.022240
wvSetCursor -win $_nWave1 66132.748898
wvSetCursor -win $_nWave1 86630.466814
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvExpandBus -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 66)}
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 7
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCollapseBus -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 36)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 126561.960650
wvSetCursor -win $_nWave1 126710.104472
wvSetCursor -win $_nWave1 126683.169232
wvSetCursor -win $_nWave1 131070.246505
wvSetCursor -win $_nWave1 151743.043483
wvSetCursor -win $_nWave1 151729.575863
wvSetCursor -win $_nWave1 151729.575863
wvSetCursor -win $_nWave1 172264.329734
wvSetCursor -win $_nWave1 172156.588772
wvSetCursor -win $_nWave1 206525.955474
wvSetCursor -win $_nWave1 206660.631676
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 172143.121152
wvSetCursor -win $_nWave1 172601.020238
wvSetCursor -win $_nWave1 172641.423099
wvSetCursor -win $_nWave1 176479.694850
wvSetCursor -win $_nWave1 172607.754048
wvSetCursor -win $_nWave1 176580.702002
wvSetCursor -win $_nWave1 176580.702002
wvSetCursor -win $_nWave1 177954.399260
wvSetCursor -win $_nWave1 178102.543082
wvSetCursor -win $_nWave1 178600.845029
wvSetCursor -win $_nWave1 178722.053610
wvSetCursor -win $_nWave1 183381.850193
wvSetCursor -win $_nWave1 183974.425481
wvSetCursor -win $_nWave1 184068.698822
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G3" 16 17 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 201751.684120
wvSetCursor -win $_nWave1 201630.475538
wvSetCursor -win $_nWave1 201495.799336
wvSetCursor -win $_nWave1 206505.754044
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetCursor -win $_nWave1 201536.202197
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 200980.662864
wvSetCursor -win $_nWave1 201303.885749
wvSetCursor -win $_nWave1 200441.958057
wvSetCursor -win $_nWave1 200859.454283
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 200859.454283
wvSetCursor -win $_nWave1 200590.101879
wvSetCursor -win $_nWave1 201155.741927
wvSetCursor -win $_nWave1 201155.741927
wvSetCursor -win $_nWave1 201155.741927
wvSetCursor -win $_nWave1 201478.964811
wvSetCursor -win $_nWave1 202098.475339
wvSetCursor -win $_nWave1 201357.756229
wvSetCursor -win $_nWave1 201048.000965
wvSetCursor -win $_nWave1 201048.000965
wvSetCursor -win $_nWave1 201048.000965
wvSetCursor -win $_nWave1 201048.000965
wvSetCursor -win $_nWave1 200293.814235
wvSetCursor -win $_nWave1 200603.569499
wvSetCursor -win $_nWave1 201128.806686
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 184122.569303
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 13
wvSelectSignal -win $_nWave1 {( "G3" 27 28 29 30 31 32 33 34 35 36 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 26)}
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 24)}
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvSetPosition -win $_nWave1 {("G3" 27)}
wvSetPosition -win $_nWave1 {("G3" 27)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divisor\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetPosition -win $_nWave1 {("G3" 27)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
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
{/Final_tb/chip0/i_MIPS/DCACHE_rdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divisor\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divisor_p\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divident_p\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 29 )} 
wvSetPosition -win $_nWave1 {("G3" 29)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 28 29 )} 
wvSelectSignal -win $_nWave1 {( "G3" 28 29 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 184459.259807
wvSetCursor -win $_nWave1 184014.828341
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 184459.259807
wvSetCursor -win $_nWave1 201095.137635
wvSetCursor -win $_nWave1 201135.540496
wvSetCursor -win $_nWave1 184630.971964
wvSetCursor -win $_nWave1 184509.763383
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSelectSignal -win $_nWave1 {( "G3" 18 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 27)}
wvSelectSignal -win $_nWave1 {( "G3" 23 24 25 26 27 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 22)}
wvGetSignalOpen -win $_nWave1
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zmul/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zmul/LO_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetPosition -win $_nWave1 {("G3" 24)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 23 24 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 22)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetPosition -win $_nWave1 {("G3" 24)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 184859.921507
wvSetCursor -win $_nWave1 185035.000570
wvSetCursor -win $_nWave1 185587.172997
wvSetCursor -win $_nWave1 185021.532950
wvSetCursor -win $_nWave1 185614.108238
wvSetCursor -win $_nWave1 185061.935810
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvExpandBus -win $_nWave1 {("G3" 24)}
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetPosition -win $_nWave1 {("G3" 24)}
wvCollapseBus -win $_nWave1 {("G3" 24)}
wvSetPosition -win $_nWave1 {("G3" 24)}
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 185964.266362
wvSetCursor -win $_nWave1 185600.640617
wvSetCursor -win $_nWave1 185587.172997
wvSetCursor -win $_nWave1 185465.964416
wvSetCursor -win $_nWave1 185667.978718
wvSetCursor -win $_nWave1 185519.834896
wvSetCursor -win $_nWave1 186058.539703
wvSetCursor -win $_nWave1 185600.640617
wvSetCursor -win $_nWave1 186260.554006
wvSetCursor -win $_nWave1 185802.654920
wvSetCursor -win $_nWave1 186570.309270
wvSetCursor -win $_nWave1 186098.942564
wvSetCursor -win $_nWave1 186597.244511
wvSetCursor -win $_nWave1 186139.345425
wvSetCursor -win $_nWave1 186139.345425
wvSetCursor -win $_nWave1 185465.964416
wvSetCursor -win $_nWave1 185465.964416
wvSetCursor -win $_nWave1 186139.345425
wvSetCursor -win $_nWave1 185641.043478
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSetCursor -win $_nWave1 185060.626586
wvSetCursor -win $_nWave1 185330.576454
wvSetCursor -win $_nWave1 184952.646639
wvSetCursor -win $_nWave1 185479.048881
wvSetCursor -win $_nWave1 185047.129093
wvSetCursor -win $_nWave1 185492.546375
wvSetCursor -win $_nWave1 184993.139119
wvSetCursor -win $_nWave1 185614.023815
wvSetCursor -win $_nWave1 185249.591494
wvSetCursor -win $_nWave1 185641.018802
wvSetCursor -win $_nWave1 185384.566427
wvSetCursor -win $_nWave1 185141.611546
wvSetCursor -win $_nWave1 185573.531335
wvSetCursor -win $_nWave1 186329.390965
wvSetCursor -win $_nWave1 186842.295714
wvSetCursor -win $_nWave1 187463.180409
wvSetCursor -win $_nWave1 188002.405270
wvSetCursor -win $_nWave1 188501.812526
wvSetCursor -win $_nWave1 189190.184689
wvSetCursor -win $_nWave1 189190.184689
wvSetCursor -win $_nWave1 189190.184689
wvSetCursor -win $_nWave1 190634.416481
wvSetCursor -win $_nWave1 191390.276111
wvSetCursor -win $_nWave1 192321.603155
wvSetCursor -win $_nWave1 192928.990358
wvSetCursor -win $_nWave1 193752.337455
wvSetCursor -win $_nWave1 193752.337455
wvSetCursor -win $_nWave1 193306.920173
wvSelectSignal -win $_nWave1 {( "G3" 23 )} 
wvSelectSignal -win $_nWave1 {( "G3" 23 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 193455.392600
wvSetCursor -win $_nWave1 194373.222150
wvSetCursor -win $_nWave1 194035.784816
wvSetCursor -win $_nWave1 193549.875054
wvSetCursor -win $_nWave1 194629.674525
wvSetCursor -win $_nWave1 194062.779802
wvSetCursor -win $_nWave1 194062.779802
wvSetCursor -win $_nWave1 193482.387587
wvSetCursor -win $_nWave1 193954.799855
wvSetCursor -win $_nWave1 193549.875054
wvSetCursor -win $_nWave1 194049.282309
wvSetCursor -win $_nWave1 194764.649459
wvSetCursor -win $_nWave1 194292.237190
wvSetCursor -win $_nWave1 194292.237190
wvSetCursor -win $_nWave1 194062.779802
wvSetCursor -win $_nWave1 194629.674525
wvSetCursor -win $_nWave1 195169.574260
wvSetCursor -win $_nWave1 194467.704604
wvSetCursor -win $_nWave1 194980.609353
wvSetCursor -win $_nWave1 195547.504075
wvSetCursor -win $_nWave1 195547.504075
wvSetCursor -win $_nWave1 194940.116873
wvSetCursor -win $_nWave1 194656.669512
wvSetCursor -win $_nWave1 194656.669512
wvSetCursor -win $_nWave1 194656.669512
wvSetCursor -win $_nWave1 193968.297349
wvSetCursor -win $_nWave1 193968.297349
wvSetCursor -win $_nWave1 193414.900120
wvSetCursor -win $_nWave1 194211.252230
wvSetCursor -win $_nWave1 194211.252230
wvSetCursor -win $_nWave1 193684.849988
wvSetCursor -win $_nWave1 193644.357507
wvSetCursor -win $_nWave1 193144.950252
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvSetCursor -win $_nWave1 193533.129495
wvSetCursor -win $_nWave1 194204.095562
wvSetCursor -win $_nWave1 194636.540962
wvSetCursor -win $_nWave1 194190.581643
wvSetCursor -win $_nWave1 194879.791500
wvSetCursor -win $_nWave1 194636.540962
wvSetCursor -win $_nWave1 194487.887856
wvSetCursor -win $_nWave1 193987.872862
wvSetCursor -win $_nWave1 195014.930687
wvSetCursor -win $_nWave1 194447.346099
wvSetCursor -win $_nWave1 194190.581643
wvSetCursor -win $_nWave1 194190.581643
wvSetCursor -win $_nWave1 193514.885705
wvSetCursor -win $_nWave1 194095.984212
wvSetCursor -win $_nWave1 193690.566649
wvSetCursor -win $_nWave1 193650.024893
wvSetCursor -win $_nWave1 194177.067724
wvSetCursor -win $_nWave1 193744.622324
wvSetCursor -win $_nWave1 193650.024893
wvSetCursor -win $_nWave1 193541.913543
wvSetCursor -win $_nWave1 194109.498130
wvSetCursor -win $_nWave1 194501.401774
wvSetCursor -win $_nWave1 194082.470293
wvSetCursor -win $_nWave1 194474.373937
wvSetCursor -win $_nWave1 195244.667306
wvSetCursor -win $_nWave1 195163.583793
wvSetCursor -win $_nWave1 195677.112706
wvSetCursor -win $_nWave1 196447.406075
wvSetCursor -win $_nWave1 196447.406075
wvSetCursor -win $_nWave1 195893.335406
wvSetCursor -win $_nWave1 196704.170532
wvSetCursor -win $_nWave1 197096.074176
wvSetCursor -win $_nWave1 197542.033495
wvSetCursor -win $_nWave1 198219.756520
wvSetCursor -win $_nWave1 198611.660164
wvSetCursor -win $_nWave1 199165.730833
wvSetCursor -win $_nWave1 199692.773665
wvSetCursor -win $_nWave1 200314.413927
wvSetCursor -win $_nWave1 200665.775815
wvSetCursor -win $_nWave1 200976.595946
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 201746.889316
wvSetCursor -win $_nWave1 201557.694453
wvSetCursor -win $_nWave1 201395.527428
wvSetCursor -win $_nWave1 200936.054190
wvSetCursor -win $_nWave1 201733.375397
wvSetCursor -win $_nWave1 201990.139853
wvSetCursor -win $_nWave1 201611.750128
wvSetCursor -win $_nWave1 202098.251203
wvSetCursor -win $_nWave1 201841.486747
wvSetCursor -win $_nWave1 201382.013509
wvSetCursor -win $_nWave1 200909.026353
wvSetCursor -win $_nWave1 201287.416078
wvSetCursor -win $_nWave1 201463.097022
wvSetCursor -win $_nWave1 201017.137703
wvSetCursor -win $_nWave1 201017.137703
wvSetCursor -win $_nWave1 200422.525277
wvSetCursor -win $_nWave1 185143.013036
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divident_p\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetPosition -win $_nWave1 {("G3" 25)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 24)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divisor_p\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetPosition -win $_nWave1 {("G3" 25)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 25 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 184534.886692
wvSetCursor -win $_nWave1 185088.957361
wvSetCursor -win $_nWave1 185832.222892
wvSetCursor -win $_nWave1 185305.180061
wvSetCursor -win $_nWave1 185251.124386
wvSetCursor -win $_nWave1 184994.359929
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divisor_p\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/div_iter_r\[500\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetPosition -win $_nWave1 {("G3" 26)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 200948.216717
wvSetCursor -win $_nWave1 185006.522456
wvSetCursor -win $_nWave1 201036.732885
wvSetCursor -win $_nWave1 184953.818173
wvSetCursor -win $_nWave1 201071.193378
wvSetCursor -win $_nWave1 200638.747978
wvSetCursor -win $_nWave1 201071.193378
wvSetCursor -win $_nWave1 201341.471753
wvSetCursor -win $_nWave1 201152.276890
wvSetCursor -win $_nWave1 200936.054190
wvSetCursor -win $_nWave1 201138.762971
wvSetCursor -win $_nWave1 200409.011359
wvSetCursor -win $_nWave1 201003.623784
wvSetCursor -win $_nWave1 200517.122709
wvSetCursor -win $_nWave1 200760.373246
wvSetCursor -win $_nWave1 200233.330415
wvSetCursor -win $_nWave1 200733.345409
wvSetCursor -win $_nWave1 200476.580952
wvSetCursor -win $_nWave1 200314.413927
wvSetCursor -win $_nWave1 200314.413927
wvSetCursor -win $_nWave1 200314.413927
wvSetCursor -win $_nWave1 201206.332565
wvSetCursor -win $_nWave1 200773.887165
wvSetCursor -win $_nWave1 201260.388240
wvSetCursor -win $_nWave1 201260.388240
wvSetCursor -win $_nWave1 201260.388240
wvSetCursor -win $_nWave1 201260.388240
wvSetCursor -win $_nWave1 200895.512434
wvSetCursor -win $_nWave1 201017.137703
wvSetCursor -win $_nWave1 201692.833640
wvSetCursor -win $_nWave1 201246.874322
wvSetCursor -win $_nWave1 200990.109865
wvSetCursor -win $_nWave1 200395.497440
wvSetCursor -win $_nWave1 200949.568109
wvSetCursor -win $_nWave1 200949.568109
wvSetCursor -win $_nWave1 200571.178384
wvSetCursor -win $_nWave1 199936.024202
wvSetCursor -win $_nWave1 199936.024202
wvSetCursor -win $_nWave1 199936.024202
wvSetCursor -win $_nWave1 199936.024202
wvSetCursor -win $_nWave1 199652.231908
wvSetCursor -win $_nWave1 198990.049889
wvSetCursor -win $_nWave1 198354.895708
wvSetCursor -win $_nWave1 197922.450307
wvSetCursor -win $_nWave1 197233.240451
wvSetCursor -win $_nWave1 197611.630176
wvSetCursor -win $_nWave1 198206.242601
wvSetCursor -win $_nWave1 197719.741526
wvSetCursor -win $_nWave1 198273.812195
wvSetCursor -win $_nWave1 197746.769364
wvSetCursor -win $_nWave1 197476.490989
wvSetCursor -win $_nWave1 197476.490989
wvSetCursor -win $_nWave1 197476.490989
wvSetCursor -win $_nWave1 197476.490989
wvSetCursor -win $_nWave1 197111.615182
wvSetCursor -win $_nWave1 197773.797201
wvSetCursor -win $_nWave1 197408.921395
wvSetCursor -win $_nWave1 197206.212613
wvSetCursor -win $_nWave1 197625.144095
wvSetCursor -win $_nWave1 197354.865720
wvSetCursor -win $_nWave1 197273.782207
wvSetCursor -win $_nWave1 197111.615182
wvSetCursor -win $_nWave1 197665.685851
wvSetCursor -win $_nWave1 197260.268288
wvSetCursor -win $_nWave1 197462.977070
wvSetCursor -win $_nWave1 197152.156938
wvSetCursor -win $_nWave1 197111.615182
wvSetCursor -win $_nWave1 197111.615182
wvSetCursor -win $_nWave1 197111.615182
wvSetCursor -win $_nWave1 197165.670857
wvSetCursor -win $_nWave1 197030.531670
wvSetCursor -win $_nWave1 196989.989913
wvSetCursor -win $_nWave1 196300.780057
wvSetCursor -win $_nWave1 196517.002757
wvSetCursor -win $_nWave1 197287.296126
wvSetCursor -win $_nWave1 196800.795051
wvSetCursor -win $_nWave1 197003.503832
wvSetCursor -win $_nWave1 197098.101263
wvSetCursor -win $_nWave1 197098.101263
wvSetCursor -win $_nWave1 196679.169782
wvSetCursor -win $_nWave1 196111.585194
wvSetCursor -win $_nWave1 196679.169782
wvSetCursor -win $_nWave1 196679.169782
wvSetCursor -win $_nWave1 196679.169782
wvSetCursor -win $_nWave1 197246.754370
wvSetCursor -win $_nWave1 197071.073426
wvSetCursor -win $_nWave1 197652.171932
wvSetCursor -win $_nWave1 197017.017751
wvSetCursor -win $_nWave1 197787.311120
wvSetCursor -win $_nWave1 197314.323963
wvSetCursor -win $_nWave1 197003.503832
wvSetCursor -win $_nWave1 196435.919244
wvSetCursor -win $_nWave1 196895.392482
wvSetCursor -win $_nWave1 196584.572351
wvSetCursor -win $_nWave1 196179.154788
wvSetCursor -win $_nWave1 195706.167631
wvSetCursor -win $_nWave1 195706.167631
wvSetCursor -win $_nWave1 184947.736910
wvSetCursor -win $_nWave1 190015.456443
wvSetCursor -win $_nWave1 190623.582787
wvSetCursor -win $_nWave1 190137.081712
wvSetCursor -win $_nWave1 190461.415762
wvSetCursor -win $_nWave1 191150.625619
wvSetCursor -win $_nWave1 191583.071019
wvSetCursor -win $_nWave1 191880.377232
wvSetCursor -win $_nWave1 192029.030338
wvSetCursor -win $_nWave1 192488.503576
wvSetCursor -win $_nWave1 191880.377232
wvSetCursor -win $_nWave1 191880.377232
wvSetCursor -win $_nWave1 191231.709131
wvSetCursor -win $_nWave1 191488.473588
wvSetCursor -win $_nWave1 192083.086013
wvSetCursor -win $_nWave1 200006.972276
wvSetCursor -win $_nWave1 200006.972276
wvSetCursor -win $_nWave1 200493.473351
wvSetCursor -win $_nWave1 200034.000113
wvSetCursor -win $_nWave1 200723.209970
wvSetCursor -win $_nWave1 201020.516182
wvSetCursor -win $_nWave1 201020.516182
wvSetCursor -win $_nWave1 200534.015107
wvSetCursor -win $_nWave1 200831.321320
wvSetCursor -win $_nWave1 201304.308476
wvSetCursor -win $_nWave1 200925.918751
wvSetCursor -win $_nWave1 200925.918751
wvSetCursor -win $_nWave1 200952.946589
wvSetCursor -win $_nWave1 200952.946589
wvSetCursor -win $_nWave1 200506.987270
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 200979.974426
wvSetCursor -win $_nWave1 200358.334163
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetCursor -win $_nWave1 184986.927274
wvSetCursor -win $_nWave1 185716.678887
wvSetCursor -win $_nWave1 185000.441193
wvSetCursor -win $_nWave1 185000.441193
wvSetCursor -win $_nWave1 185581.539699
wvSetCursor -win $_nWave1 186054.526856
wvSetCursor -win $_nWave1 186581.569687
wvSetCursor -win $_nWave1 187514.030081
wvSetCursor -win $_nWave1 187838.364132
wvSetCursor -win $_nWave1 188595.143582
wvSetCursor -win $_nWave1 189135.700332
wvSetCursor -win $_nWave1 189905.993701
wvSetCursor -win $_nWave1 190568.175720
wvSetCursor -win $_nWave1 190838.454095
wvSetCursor -win $_nWave1 191101.975511
wvSetCursor -win $_nWave1 191818.213205
wvSetCursor -win $_nWave1 191764.157530
wvSetCursor -win $_nWave1 191764.157530
wvSetCursor -win $_nWave1 192885.812787
wvSetCursor -win $_nWave1 193602.050481
wvSetCursor -win $_nWave1 194034.495881
wvSetCursor -win $_nWave1 194453.427363
wvSetCursor -win $_nWave1 194331.802094
wvSetCursor -win $_nWave1 194183.148988
wvSetCursor -win $_nWave1 194169.635069
wvSetCursor -win $_nWave1 194480.455200
wvSetCursor -win $_nWave1 194939.928438
wvSetCursor -win $_nWave1 195615.624376
wvSetCursor -win $_nWave1 195912.930588
wvSetCursor -win $_nWave1 196615.654364
wvSetCursor -win $_nWave1 196615.654364
wvSetCursor -win $_nWave1 185163.959610
wvSetCursor -win $_nWave1 185461.265822
wvSetCursor -win $_nWave1 185974.794735
wvSetCursor -win $_nWave1 186812.657698
wvSetCursor -win $_nWave1 186718.060267
wvSetCursor -win $_nWave1 187231.589179
wvSetCursor -win $_nWave1 187853.229442
wvSetCursor -win $_nWave1 187853.229442
wvSetCursor -win $_nWave1 185042.334341
wvSetCursor -win $_nWave1 185528.835416
wvSetCursor -win $_nWave1 185136.931772
wvSetCursor -win $_nWave1 185636.946766
wvSetCursor -win $_nWave1 186069.392166
wvSetCursor -win $_nWave1 186420.754054
wvSetCursor -win $_nWave1 186974.824723
wvSetCursor -win $_nWave1 187542.409311
wvSetCursor -win $_nWave1 188082.966061
wvSetCursor -win $_nWave1 188542.439299
wvSetCursor -win $_nWave1 189177.593480
wvSetCursor -win $_nWave1 189623.552799
wvSetCursor -win $_nWave1 189623.552799
wvSetCursor -win $_nWave1 200395.497440
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zmul"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zdiv"
wvSetPosition -win $_nWave1 {("G3" 27)}
wvSetPosition -win $_nWave1 {("G3" 27)}
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
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/WBdata\[31:0\]} \
{/WB<<2\[29:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/bcomp2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData1\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadData2\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg1\[400\]} \
{/Final_tb/chip0/i_MIPS/zregister/ReadReg2\[400\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_HI\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/next_LO\[31:0\]} \
{/Final_tb/chip0/i_MIPS/Mul_idex_r} \
{/Final_tb/chip0/i_MIPS/Div_idex_r} \
{/Final_tb/chip0/i_MIPS/readreg1_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/readreg2_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/stall_idex} \
{/Final_tb/chip0/i_MIPS/zdiv/HI_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/LO_r\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/divisor_p\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zdiv/div_iter_r\[500\]} \
{/Final_tb/chip0/i_MIPS/zdiv/diff\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetPosition -win $_nWave1 {("G3" 27)}
wvGetSignalClose -win $_nWave1
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 185036.253077
wvSetCursor -win $_nWave1 185644.379421
wvSetCursor -win $_nWave1 185563.295909
wvSetCursor -win $_nWave1 184955.169565
wvSetCursor -win $_nWave1 185482.212396
wvSetCursor -win $_nWave1 193796.650911
wvSetCursor -win $_nWave1 193958.817936
wvSetCursor -win $_nWave1 201026.597446
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSelectSignal -win $_nWave1 {( "G3" 26 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 193491.236347
wvSetCursor -win $_nWave1 193707.459047
wvSetCursor -win $_nWave1 193707.459047
wvSetCursor -win $_nWave1 193883.139991
wvSetCursor -win $_nWave1 184855.842262
wvSetCursor -win $_nWave1 185112.606718
wvSetCursor -win $_nWave1 185031.523206
wvSetCursor -win $_nWave1 193640.565150
wvSetCursor -win $_nWave1 193870.301768
wvSetCursor -win $_nWave1 193991.927037
wvSetCursor -win $_nWave1 193991.927037
wvSetCursor -win $_nWave1 194181.121900
wvSetCursor -win $_nWave1 200829.969928
wvSetCursor -win $_nWave1 200992.136953
wvSetCursor -win $_nWave1 200451.580203
wvSetCursor -win $_nWave1 201167.817897
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 194018.954875
wvSetCursor -win $_nWave1 193316.231099
wvSetCursor -win $_nWave1 193316.231099
wvSetCursor -win $_nWave1 193316.231099
wvSetCursor -win $_nWave1 193518.939881
wvSetCursor -win $_nWave1 193518.939881
wvSetCursor -win $_nWave1 184977.467531
wvSetCursor -win $_nWave1 184977.467531
wvSetCursor -win $_nWave1 184977.467531
wvSetCursor -win $_nWave1 201009.705047
wvSetCursor -win $_nWave1 184982.197402
wvSetCursor -win $_nWave1 184684.891190
wvSetCursor -win $_nWave1 185103.822671
wvSetCursor -win $_nWave1 192887.839875
wvSelectSignal -win $_nWave1 {( "G3" 24 )} 
wvSetCursor -win $_nWave1 192887.839875
wvSetCursor -win $_nWave1 193441.910544
wvSetCursor -win $_nWave1 192781.079917
wvSetCursor -win $_nWave1 184983.548794
wvSetRadix -win $_nWave1 -Unsigned
wvSetCursor -win $_nWave1 184983.548794
wvSetCursor -win $_nWave1 184983.548794
wvSetCursor -win $_nWave1 192943.246942
wvSetCursor -win $_nWave1 185037.604469
wvSetCursor -win $_nWave1 185591.675138
wvSetCursor -win $_nWave1 186105.204051
wvSetCursor -win $_nWave1 186618.732964
wvSetCursor -win $_nWave1 187105.234039
wvSetCursor -win $_nWave1 187591.735114
wvSetCursor -win $_nWave1 188091.750108
wvSetCursor -win $_nWave1 188645.820777
wvSetCursor -win $_nWave1 188645.820777
wvSetCursor -win $_nWave1 184956.520957
wvSetCursor -win $_nWave1 184618.672988
wvSetCursor -win $_nWave1 185024.090551
wvSetCursor -win $_nWave1 192713.510323
wvSetCursor -win $_nWave1 193091.900048
wvSetCursor -win $_nWave1 185267.341088
wvSetCursor -win $_nWave1 185145.715819
wvSetCursor -win $_nWave1 185145.715819
wvSetCursor -win $_nWave1 193862.193417
wvSetCursor -win $_nWave1 193632.456798
wvSetCursor -win $_nWave1 194010.846524
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 23 24 )} 
wvSelectSignal -win $_nWave1 {( "G3" 23 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 194010.846524
wvSetCursor -win $_nWave1 201077.274641
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 201509.720042
wvSetCursor -win $_nWave1 200888.079779
wvSetCursor -win $_nWave1 201171.872073
wvSetCursor -win $_nWave1 200631.315323
wvSetCursor -win $_nWave1 200631.315323
wvSetCursor -win $_nWave1 201171.872073
wvSetCursor -win $_nWave1 200644.829241
wvSetCursor -win $_nWave1 200536.717891
wvSetCursor -win $_nWave1 200536.717891
wvSetCursor -win $_nWave1 200536.717891
wvSetCursor -win $_nWave1 200536.717891
wvSetCursor -win $_nWave1 200009.675060
wvSetCursor -win $_nWave1 200577.259648
wvSetCursor -win $_nWave1 200779.968429
wvSetCursor -win $_nWave1 200779.968429
wvSetCursor -win $_nWave1 200442.120460
wvSetCursor -win $_nWave1 200509.690054
wvSetCursor -win $_nWave1 201361.066936
wvSetCursor -win $_nWave1 201361.066936
wvSetCursor -win $_nWave1 201361.066936
wvSetCursor -win $_nWave1 200996.191129
wvSetCursor -win $_nWave1 200550.231810
wvSetCursor -win $_nWave1 201469.178286
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 201117.816398
wvSetCursor -win $_nWave1 201077.274642
wvSetCursor -win $_nWave1 201685.400986
wvSetCursor -win $_nWave1 201158.358154
wvSetCursor -win $_nWave1 200982.677210
wvSetCursor -win $_nWave1 206663.928656
wvSetCursor -win $_nWave1 206623.386899
wvSetCursor -win $_nWave1 206528.789468
wvSetCursor -win $_nWave1 229586.237651
wvSetCursor -win $_nWave1 233624.872271
wvSetCursor -win $_nWave1 233624.872271
wvSetCursor -win $_nWave1 233624.872271
wvSetCursor -win $_nWave1 229462.585294
wvSetCursor -win $_nWave1 229381.501782
wvSetCursor -win $_nWave1 229489.613132
wvSetCursor -win $_nWave1 229489.613132
wvSetCursor -win $_nWave1 229489.613132
wvSetCursor -win $_nWave1 233570.816596
wvSetCursor -win $_nWave1 233584.330515
wvSetCursor -win $_nWave1 256077.572590
wvSetCursor -win $_nWave1 233555.951286
wvSetCursor -win $_nWave1 233596.493042
wvSetCursor -win $_nWave1 233596.493042
wvSetCursor -win $_nWave1 233596.493042
wvSetCursor -win $_nWave1 229542.317415
wvSetCursor -win $_nWave1 233582.979123
wvSetCursor -win $_nWave1 256081.626765
wvSetCursor -win $_nWave1 256189.738115
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 260054.718880
