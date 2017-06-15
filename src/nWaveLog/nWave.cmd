wvResizeWindow -win $_nWave1 4 9 1366 705
wvRestoreSignal -win $_nWave1 \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/final.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvSelectGroup -win $_nWave1 {G6}
wvSelectGroup -win $_nWave1 {G6}
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
wvZoom -win $_nWave1 376477605.263158 399419796.992481
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 1500881203.006519 1599419796.991482
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/D_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/I_cache/proc_read} \
{/Final_tb/chip0/I_cache/proc_write} \
{/Final_tb/chip0/I_cache/mem_ready} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/D_cache/mem_ready} \
{/Final_tb/chip0/I_cache/proc_addr\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/Final_tb/chip0/DCACHE_wdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zregister"
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_stall} \
{/Final_tb/chip0/i_MIPS/DCACHE_stall} \
{/Final_tb/chip0/i_MIPS/ICACHE_ren} \
{/Final_tb/chip0/i_MIPS/ICACHE_wen} \
{/Final_tb/chip0/i_MIPS/ICACHE_wdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/Final_tb/chip0/i_MIPS/DCACHE_ren} \
{/Final_tb/chip0/i_MIPS/DCACHE_wen} \
{/Final_tb/chip0/i_MIPS/RegWrite_memwb_r} \
{/Final_tb/chip0/I_cache/proc_read} \
{/Final_tb/chip0/I_cache/proc_write} \
{/Final_tb/chip0/I_cache/mem_ready} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/Final_tb/chip0/D_cache/mem_ready} \
{/Final_tb/chip0/I_cache/proc_addr\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/Final_tb/chip0/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/r_12} \
{/Final_tb/chip0/i_MIPS/zregister/r_13} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 2 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 17670653.608469 -snap {("G7" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1122913.958709 -snap {("G7" 0)}
wvSaveSignal -win $_nWave1 \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/final.rc"
wvSetCursor -win $_nWave1 2778343.815364 -snap {("G7" 0)}
wvExit
