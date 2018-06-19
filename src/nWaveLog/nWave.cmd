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
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 111753.176692
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G6" 4)}
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
{/Final_tb/chip0/i_MIPS/zregister/r_12\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/r_13\[31:0\]} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetPosition -win $_nWave1 {("G6" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetCursor -win $_nWave1 2310.685984
wvSetCursor -win $_nWave1 6406.902047
wvSetCursor -win $_nWave1 8192.432126
wvZoom -win $_nWave1 13443.991181 13969.147086
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*memwb*"
wvSetPosition -win $_nWave1 {("G6" 4)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
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
{/Final_tb/chip0/i_MIPS/zregister/r_12\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/r_13\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetPosition -win $_nWave1 {("G6" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 14802.533702
wvSetCursor -win $_nWave1 14862.061318
wvSetCursor -win $_nWave1 14961.274010
wvSetCursor -win $_nWave1 15100.171780
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 76195.347744
wvSetCursor -win $_nWave1 46046.624624
wvSetCursor -win $_nWave1 44614.381245
wvSetCursor -win $_nWave1 46333.073299
wvSetCursor -win $_nWave1 46333.073299
wvSetCursor -win $_nWave1 46333.073299
wvSetCursor -win $_nWave1 43755.035218
wvSetCursor -win $_nWave1 44184.708231
wvSetCursor -win $_nWave1 44184.708231
wvSetCursor -win $_nWave1 44184.708231
wvSetCursor -win $_nWave1 44184.708231
wvSetCursor -win $_nWave1 46261.461131
wvSetCursor -win $_nWave1 44829.217752
wvZoom -win $_nWave1 42824.077022 42967.301360
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 44325.778820
wvSetCursor -win $_nWave1 44902.983670
wvSetCursor -win $_nWave1 44644.533737
wvSetCursor -win $_nWave1 44937.443661
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G7" 0)}
wvSetPosition -win $_nWave1 {("G6" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/I_cache"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/testbed"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetSignalFilter -win $_nWave1 "*RegRd*"
wvSetPosition -win $_nWave1 {("G6" 6)}
wvSetPosition -win $_nWave1 {("G6" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/ICACHE_addr\[29:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/Final_tb/chip0/DCACHE_wdata\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/r_12\[31:0\]} \
{/Final_tb/chip0/i_MIPS/zregister/r_13\[31:0\]} \
{/Final_tb/chip0/i_MIPS/RegRd_memwb_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRd_idex_r\[400\]} \
{/Final_tb/chip0/i_MIPS/RegRd_exmem_r\[400\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 6 )} 
wvSetPosition -win $_nWave1 {("G6" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 43447.049048 -snap {("G1" 1)}
