wvResizeWindow -win $_nWave1 4 9 1366 705
wvRestoreSignal -win $_nWave1 \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/final.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvResizeWindow -win $_nWave1 -4 1 1366 705
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 181044.442686 209691.427684
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 -4 1 1366 705
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
wvSetCursor -win $_nWave1 197017.309845
wvSetCursor -win $_nWave1 197070.710577
wvSetCursor -win $_nWave1 197480.116195
wvSetCursor -win $_nWave1 197622.518150
wvSetCursor -win $_nWave1 197711.519371
wvSetCursor -win $_nWave1 197640.318394
wvSetCursor -win $_nWave1 197693.719127
wvSetCursor -win $_nWave1 197622.518150
wvSetCursor -win $_nWave1 197675.918882
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 199580.545018 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 197622.518150
wvSetCursor -win $_nWave1 197675.918882
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
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 197070.710577
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 197070.710577
wvSetCursor -win $_nWave1 197070.710577
wvSetCursor -win $_nWave1 193136.856596
wvSetCursor -win $_nWave1 193172.457084
wvSetCursor -win $_nWave1 192709.650734
wvSetCursor -win $_nWave1 192674.050245
wvSetCursor -win $_nWave1 192656.250001
wvSetCursor -win $_nWave1 192709.650734
wvSetCursor -win $_nWave1 192691.850489
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G5" 3 4 )} 
wvSelectGroup -win $_nWave1 {G5}
wvScrollDown -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 4 5 6 7 8 9 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 11)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
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
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G3" 15)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G3" 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G3" 14 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 190983.027040
wvSetCursor -win $_nWave1 191089.828506
wvSetCursor -win $_nWave1 190947.426552
wvSetCursor -win $_nWave1 191125.428994
wvSetCursor -win $_nWave1 190413.419224
wvSetCursor -win $_nWave1 190466.819957
wvSetCursor -win $_nWave1 189381.005057
wvSetCursor -win $_nWave1 189381.005057
wvSetCursor -win $_nWave1 189505.606767
wvSetCursor -win $_nWave1 189630.208476
wvSetCursor -win $_nWave1 190110.815072
wvSetCursor -win $_nWave1 190182.016049
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 190413.419224
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetSignalFilter -win $_nWave1 "stall*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 16 )} 
wvSetPosition -win $_nWave1 {("G3" 16)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSetCursor -win $_nWave1 181624.548620
wvSetCursor -win $_nWave1 181624.548620
wvSetCursor -win $_nWave1 181660.149109
wvSetCursor -win $_nWave1 182122.955459
wvSetCursor -win $_nWave1 182247.557169
wvSetCursor -win $_nWave1 182639.162543
wvSetCursor -win $_nWave1 182674.763032
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "comp*"
wvGetSignalSetSignalFilter -win $_nWave1 "bcomp*"
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 5
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 10 11 )} 
wvSetCursor -win $_nWave1 183190.970115
wvSetCursor -win $_nWave1 186893.420921
wvSetCursor -win $_nWave1 187000.222387
wvSetCursor -win $_nWave1 187961.435577
wvSetCursor -win $_nWave1 188032.636554
wvSetCursor -win $_nWave1 187374.027516
wvSetCursor -win $_nWave1 187018.022631
wvSetCursor -win $_nWave1 188637.844859
wvSetCursor -win $_nWave1 189100.651210
wvSetCursor -win $_nWave1 189545.657316
wvSetCursor -win $_nWave1 190293.267575
wvSetCursor -win $_nWave1 189990.663423
wvSetCursor -win $_nWave1 190079.664644
wvSetCursor -win $_nWave1 190150.865621
wvSetCursor -win $_nWave1 190150.865621
wvSetCursor -win $_nWave1 190934.076369
wvSetCursor -win $_nWave1 191040.877834
wvSetCursor -win $_nWave1 191272.281010
wvSetCursor -win $_nWave1 191076.478323
wvSetCursor -win $_nWave1 191094.278567
wvSetCursor -win $_nWave1 191147.679300
wvSetCursor -win $_nWave1 190613.671972
wvSetCursor -win $_nWave1 190560.271239
wvSetCursor -win $_nWave1 190560.271239
wvSetCursor -win $_nWave1 190560.271239
wvSetCursor -win $_nWave1 189937.262690
wvSetCursor -win $_nWave1 189972.863178
wvSetCursor -win $_nWave1 191468.083696
wvSetCursor -win $_nWave1 191628.285895
wvSetCursor -win $_nWave1 193194.707390
wvSetCursor -win $_nWave1 193141.306657
wvSetCursor -win $_nWave1 193016.704947
wvSetCursor -win $_nWave1 192571.698841
wvSetCursor -win $_nWave1 192696.300550
wvSetCursor -win $_nWave1 192607.299329
wvSetCursor -win $_nWave1 192607.299329
wvSetCursor -win $_nWave1 192678.500306
wvSetCursor -win $_nWave1 187053.623120
wvSetCursor -win $_nWave1 187356.227272
wvSetCursor -win $_nWave1 187445.228493
wvSetCursor -win $_nWave1 190061.864400
wvSetCursor -win $_nWave1 190471.270018
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "ForwardJA"
wvGetSignalSetSignalFilter -win $_nWave1 ""
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 17 )} 
wvSetPosition -win $_nWave1 {("G3" 17)}
wvGetSignalClose -win $_nWave1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 190186.466110
wvSetCursor -win $_nWave1 190809.474659
wvSetCursor -win $_nWave1 190667.072705
wvSetCursor -win $_nWave1 190524.670751
wvSetCursor -win $_nWave1 192625.099573
wvSetCursor -win $_nWave1 192518.298108
wvSetCursor -win $_nWave1 190097.464888
wvSetCursor -win $_nWave1 189972.863178
wvSetCursor -win $_nWave1 190079.664644
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetCursor -win $_nWave1 190133.065377
wvSetCursor -win $_nWave1 190222.066598
wvSetCursor -win $_nWave1 190186.466110
wvSetCursor -win $_nWave1 191735.087360
wvSetCursor -win $_nWave1 191681.686628
wvSetCursor -win $_nWave1 191539.284673
wvSetCursor -win $_nWave1 191646.086139
wvSetCursor -win $_nWave1 191058.678078
wvSetCursor -win $_nWave1 191058.678078
wvSetCursor -win $_nWave1 190044.064156
wvSetCursor -win $_nWave1 189527.857072
wvSetCursor -win $_nWave1 189011.649988
wvSetCursor -win $_nWave1 189456.656095
wvSetCursor -win $_nWave1 189848.261469
wvSetCursor -win $_nWave1 191076.478323
wvSetCursor -win $_nWave1 191841.888826
wvSetCursor -win $_nWave1 191628.285895
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 192749.701283
wvSetCursor -win $_nWave1 192696.300550
wvSetCursor -win $_nWave1 192607.299329
wvSetCursor -win $_nWave1 192660.700062
wvSetCursor -win $_nWave1 193087.905924
wvSetCursor -win $_nWave1 193176.907145
wvSetCursor -win $_nWave1 196986.159417
wvSetCursor -win $_nWave1 197413.365279
wvSetCursor -win $_nWave1 197537.966989
wvSetCursor -win $_nWave1 196861.557707
wvSetCursor -win $_nWave1 196968.359173
wvSetCursor -win $_nWave1 188281.839974
wvSetCursor -win $_nWave1 188264.039730
wvSetCursor -win $_nWave1 188531.043393
wvSetCursor -win $_nWave1 188602.244370
wvSetCursor -win $_nWave1 188602.244370
wvSetCursor -win $_nWave1 188602.244370
wvSetCursor -win $_nWave1 192981.104459
wvSetCursor -win $_nWave1 193105.706168
wvSetCursor -win $_nWave1 193070.105680
wvSetCursor -win $_nWave1 191361.282231
wvSetCursor -win $_nWave1 190969.676857
wvSetCursor -win $_nWave1 191076.478323
wvSetCursor -win $_nWave1 190934.076369
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 893145.056004 950105.837637
wvZoom -win $_nWave1 922361.303808 928956.762734
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
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
wvZoom -win $_nWave1 823698.947368 1015256.842105
wvZoom -win $_nWave1 925618.745908 939366.920171
wvScrollDown -win $_nWave1 6
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 862201.290493 986816.320760
wvZoom -win $_nWave1 922898.946384 929099.885689
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 924622.748171
wvSetCursor -win $_nWave1 925180.536013
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 925738.323855
wvSetCursor -win $_nWave1 925667.116897
wvSetCursor -win $_nWave1 925560.306459
wvSetCursor -win $_nWave1 926023.151689
wvSetCursor -win $_nWave1 926426.657787
wvSetCursor -win $_nWave1 926877.635191
wvSetCursor -win $_nWave1 927494.762165
wvSetCursor -win $_nWave1 927554.101297
wvSetCursor -win $_nWave1 927601.572603
wvSetCursor -win $_nWave1 927625.308256
wvSetCursor -win $_nWave1 927649.043909
wvSetCursor -win $_nWave1 925536.570806
wvSetCursor -win $_nWave1 926023.151689
wvSetCursor -win $_nWave1 926640.278663
wvSetCursor -win $_nWave1 926675.882142
wvSetCursor -win $_nWave1 927043.784761
wvSetCursor -win $_nWave1 927043.784761
wvSetCursor -win $_nWave1 927625.308256
wvSetCursor -win $_nWave1 927838.929132
wvSetCursor -win $_nWave1 927922.003917
wvSetCursor -win $_nWave1 927922.003917
wvSetCursor -win $_nWave1 927625.308256
wvSetCursor -win $_nWave1 927625.308256
wvSetCursor -win $_nWave1 928289.906536
wvSetCursor -win $_nWave1 928147.492619
wvSelectSignal -win $_nWave1 {( "G3" 14 15 )} 
wvSetCursor -win $_nWave1 932028.271858
wvSetCursor -win $_nWave1 932028.271858
wvSetCursor -win $_nWave1 932028.271858
wvSetCursor -win $_nWave1 935932.786751
wvSetCursor -win $_nWave1 928028.814354
wvSetCursor -win $_nWave1 927471.026513
wvSetCursor -win $_nWave1 928088.153486
wvSetCursor -win $_nWave1 932040.139685
wvSetCursor -win $_nWave1 935968.390230
wvSetCursor -win $_nWave1 936514.310246
wvSetCursor -win $_nWave1 936644.856336
wvSetCursor -win $_nWave1 936965.287650
wvSetCursor -win $_nWave1 937083.965914
wvSetCursor -win $_nWave1 937107.701567
wvSetCursor -win $_nWave1 937155.172872
wvSetCursor -win $_nWave1 937155.172872
wvSetCursor -win $_nWave1 927494.762165
wvSetCursor -win $_nWave1 928622.205675
wvSetCursor -win $_nWave1 928337.377841
wvSetCursor -win $_nWave1 928444.188279
wvSetCursor -win $_nWave1 932111.346643
wvSetCursor -win $_nWave1 932182.553602
wvSetCursor -win $_nWave1 932123.214470
wvSetCursor -win $_nWave1 932574.191874
wvSetCursor -win $_nWave1 932502.984915
wvSelectSignal -win $_nWave1 {( "G3" 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 935953.555447
wvSetCursor -win $_nWave1 936428.268504
wvSetCursor -win $_nWave1 936487.607636
wvSetCursor -win $_nWave1 936570.682421
wvSetCursor -win $_nWave1 936641.889380
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSetRadix -win $_nWave1 -format Hex
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSetCursor -win $_nWave1 935998.059796
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalClose -win $_nWave1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 935998.059796
wvSetCursor -win $_nWave1 936069.266755
wvSetCursor -win $_nWave1 936009.927623
wvSetCursor -win $_nWave1 936140.473713
wvSetCursor -win $_nWave1 935974.324143
wvSetCursor -win $_nWave1 935748.835441
wvSetCursor -win $_nWave1 936140.473713
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetSignalFilter -win $_nWave1 "*stall*"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 18 )} 
wvSetPosition -win $_nWave1 {("G3" 18)}
wvGetSignalClose -win $_nWave1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 935867.513706
wvSetCursor -win $_nWave1 935962.456317
wvSetCursor -win $_nWave1 935962.456317
wvSetCursor -win $_nWave1 936615.186770
wvSetCursor -win $_nWave1 936698.261555
wvSetCursor -win $_nWave1 936698.261555
wvSetCursor -win $_nWave1 936627.054597
wvSetCursor -win $_nWave1 936710.129382
wvSetCursor -win $_nWave1 936045.531102
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 936674.525902
wvSetCursor -win $_nWave1 938870.073790 -snap {("G3" 15)}
wvSetCursor -win $_nWave1 936555.847638
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
wvSetCursor -win $_nWave1 1054679.425837
wvSetCursor -win $_nWave1 1056707.655502
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 189197.175011 -snap {("G3" 8)}
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
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 14292.680921
wvSetCursor -win $_nWave1 14181.762111
wvSetCursor -win $_nWave1 14118.379934
wvSetCursor -win $_nWave1 14150.071023
wvSetCursor -win $_nWave1 15211.722488
wvSetCursor -win $_nWave1 15132.494767
wvSetCursor -win $_nWave1 14118.379934
wvSetCursor -win $_nWave1 14451.136364
wvSetCursor -win $_nWave1 13928.233403
wvSetCursor -win $_nWave1 14086.688846
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
wvSetCursor -win $_nWave1 14546.209629
wvSetCursor -win $_nWave1 14609.591806
wvSetCursor -win $_nWave1 14688.819528
wvSetCursor -win $_nWave1 15164.185855
wvSetCursor -win $_nWave1 14245.144288
wvSetCursor -win $_nWave1 14530.364085
wvSetCursor -win $_nWave1 14577.900718
wvSetCursor -win $_nWave1 14704.665072
wvSetCursor -win $_nWave1 14752.201705
wvSetCursor -win $_nWave1 15021.575957
wvSetCursor -win $_nWave1 15164.185855
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvSetCursor -win $_nWave1 15592.015550
wvSetCursor -win $_nWave1 15687.088816
wvSetCursor -win $_nWave1 15655.397727
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 17002.268989
wvSetCursor -win $_nWave1 33148.878589
wvSetCursor -win $_nWave1 37720.318107
wvSetCursor -win $_nWave1 38671.050763
wvSetCursor -win $_nWave1 42679.973460
wvSetCursor -win $_nWave1 42632.436827
wvSetCursor -win $_nWave1 42711.664548
wvSetCursor -win $_nWave1 42711.664548
wvSetCursor -win $_nWave1 42505.672473
wvSetCursor -win $_nWave1 43599.015027
wvSetCursor -win $_nWave1 43694.088292
wvSetCursor -win $_nWave1 43694.088292
wvSetCursor -win $_nWave1 44153.609076
wvSetCursor -win $_nWave1 47956.539698
wvSetCursor -win $_nWave1 48511.133747
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvSetCursor -win $_nWave1 48118.956527
wvSetCursor -win $_nWave1 48118.956527
wvSetCursor -win $_nWave1 48530.940677
wvSetCursor -win $_nWave1 47928.809996
wvSetCursor -win $_nWave1 47928.809996
wvSetCursor -win $_nWave1 48641.859487
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 52112.033680
wvSetCursor -win $_nWave1 55027.613824
wvSetCursor -win $_nWave1 58101.649410
wvSetCursor -win $_nWave1 61064.766186
wvSetCursor -win $_nWave1 64012.037418
wvSetCursor -win $_nWave1 67038.536372
wvSetCursor -win $_nWave1 70076.919483
wvSetCursor -win $_nWave1 73372.792689
wvSetCursor -win $_nWave1 73103.418437
wvSetCursor -win $_nWave1 73103.418437
wvSetCursor -win $_nWave1 103221.836686
wvSetCursor -win $_nWave1 103158.454509
wvSetCursor -win $_nWave1 103142.608964
wvSetCursor -win $_nWave1 103190.145597
wvSetCursor -win $_nWave1 103095.072332
wvSetCursor -win $_nWave1 109025.267270
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 105848.235646 110665.281100
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 104476.875816
wvSetCursor -win $_nWave1 104495.314267
wvSetCursor -win $_nWave1 104587.506525
wvSetCursor -win $_nWave1 104661.260331
wvSetCursor -win $_nWave1 105195.975424
wvSetCursor -win $_nWave1 105195.975424
wvSetCursor -win $_nWave1 105195.975424
wvSetCursor -win $_nWave1 104896.350587
wvSetCursor -win $_nWave1 104398.512397
wvSetCursor -win $_nWave1 105080.735102
wvSetCursor -win $_nWave1 104582.896912
wvSetCursor -win $_nWave1 105154.488908
wvSetCursor -win $_nWave1 109045.002175
wvSetCursor -win $_nWave1 109690.347977
wvSetCursor -win $_nWave1 110409.447586
wvSetCursor -win $_nWave1 110612.270552
wvSetCursor -win $_nWave1 114880.772075 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 115000.000000
wvSetCursor -win $_nWave1 120015.880818
wvSetCursor -win $_nWave1 120771.857329
wvSetCursor -win $_nWave1 120771.857329
wvSetCursor -win $_nWave1 121638.464550 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 121472.518486
wvSetCursor -win $_nWave1 121675.341453
wvSetCursor -win $_nWave1 125455.224010
wvSetCursor -win $_nWave1 127004.053936
wvSetCursor -win $_nWave1 127170.000000
wvSetCursor -win $_nWave1 170016.351675
wvSetCursor -win $_nWave1 170237.613093
wvSetCursor -win $_nWave1 170237.613093
wvSetCursor -win $_nWave1 170237.613093
wvSetCursor -win $_nWave1 170108.543932
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 168107.971944 172680.707916
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 170108.543932
wvSetCursor -win $_nWave1 170108.543932
wvSetCursor -win $_nWave1 109027.785602
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 109570.387765
wvSetCursor -win $_nWave1 110550.572318
wvSetCursor -win $_nWave1 110673.095387
wvSetCursor -win $_nWave1 110112.989928
wvSetCursor -win $_nWave1 109570.387765
wvSetCursor -win $_nWave1 109972.963563
wvSetCursor -win $_nWave1 110480.559135
wvSetCursor -win $_nWave1 114523.820416
wvSetCursor -win $_nWave1 115171.442353
wvSetCursor -win $_nWave1 115696.541220
wvSetCursor -win $_nWave1 115696.541220
wvSetCursor -win $_nWave1 115136.435761
wvGetSignalOpen -win $_nWave1
wvGetSignalSetSignalFilter -win $_nWave1 "PC*"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 19 )} 
wvSetPosition -win $_nWave1 {("G3" 19)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 109570.387765
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
{/Final_tb/chip0/i_MIPS/PC_w\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSetPosition -win $_nWave1 {("G3" 20)}
wvGetSignalClose -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSetRadix -win $_nWave1 -format Hex
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
{/Final_tb/chip0/i_MIPS/PC_w\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSetPosition -win $_nWave1 {("G3" 21)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 20 21 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G3" 19)}
wvSetCursor -win $_nWave1 113561.139159 -snap {("G3" 13)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 109605.394356
wvSetCursor -win $_nWave1 109762.924016
wvSetCursor -win $_nWave1 109727.917425
wvSetCursor -win $_nWave1 109692.910834
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "Branch"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
{/Final_tb/chip0/i_MIPS/Branch} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 20 )} 
wvSetPosition -win $_nWave1 {("G3" 20)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*PC*"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
{/Final_tb/chip0/i_MIPS/Branch} \
{/Final_tb/chip0/i_MIPS/PC_4_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSetPosition -win $_nWave1 {("G3" 21)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 6
wvScrollDown -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G3" 20)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/EX_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zalu"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*bjaddr"
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
{/Final_tb/chip0/i_MIPS/Branch} \
{/Final_tb/chip0/i_MIPS/bjaddr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 21 )} 
wvSetPosition -win $_nWave1 {("G3" 21)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*PC*"
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSetPosition -win $_nWave1 {("G3" 22)}
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
{/Final_tb/chip0/i_MIPS/stall_ifid} \
{/Final_tb/chip0/i_MIPS/ForwardJA\[100\]} \
{/Final_tb/chip0/i_MIPS/stallJ} \
{/Final_tb/chip0/i_MIPS/PCWrite} \
{/Final_tb/chip0/i_MIPS/Branch} \
{/Final_tb/chip0/i_MIPS/bjaddr\[31:0\]} \
{/Final_tb/chip0/i_MIPS/PC_4\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/i_MIPS/IF_Flush2} \
{/Final_tb/chip0/i_MIPS/IF_Flush} \
{/Final_tb/chip0/i_MIPS/take} \
{/Final_tb/chip0/i_MIPS/take_r} \
{/Final_tb/chip0/i_MIPS/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/take} \
{/Final_tb/chip0/i_MIPS/zbranchprd/taken} \
{/Final_tb/chip0/i_MIPS/zbranchprd/state_r\[100\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 22 )} 
wvSetPosition -win $_nWave1 {("G3" 22)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 112633.464492 -snap {("G1" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 105457.355915 113578.885068
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 109634.697465
wvScrollUp -win $_nWave1 1
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
