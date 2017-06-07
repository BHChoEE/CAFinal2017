wvResizeWindow -win $_nWave1 4 9 1362 705
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwarding"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zforwardjump"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zaluCtrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Final_tb/clk} \
{/Final_tb/rst_n} \
{/Final_tb/chip0/i_MIPS/zctrl/ALUOp\[100\]} \
{/Final_tb/chip0/i_MIPS/zctrl/ALURsc} \
{/Final_tb/chip0/i_MIPS/zctrl/ALUop} \
{/Final_tb/chip0/i_MIPS/zctrl/IF_Flush} \
{/Final_tb/chip0/i_MIPS/zctrl/Jump} \
{/Final_tb/chip0/i_MIPS/zctrl/JumpR} \
{/Final_tb/chip0/i_MIPS/zctrl/MemRead} \
{/Final_tb/chip0/i_MIPS/zctrl/MemWrite} \
{/Final_tb/chip0/i_MIPS/zctrl/MemtoReg} \
{/Final_tb/chip0/i_MIPS/zctrl/PCSrc} \
{/Final_tb/chip0/i_MIPS/zctrl/RegDst} \
{/Final_tb/chip0/i_MIPS/zctrl/RegWrite} \
{/Final_tb/chip0/i_MIPS/zctrl/ctrl\[900\]} \
{/Final_tb/chip0/i_MIPS/zctrl/eq} \
{/Final_tb/chip0/i_MIPS/zctrl/funct\[5:0\]} \
{/Final_tb/chip0/i_MIPS/zctrl/inst\[5:0\]} \
{/Final_tb/chip0/i_MIPS/zctrl/raWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvResizeWindow -win $_nWave1 4 9 1362 705
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 43032.115792
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvExpandBus -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvCollapseBus -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Final_tb"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalSetScope -win $_nWave1 "/Final_tb/chip0/i_MIPS/zctrl"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 115888.470252 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd.fsdb" \
           "/home/raid7_2/userb03/b03085/ca/CAFinal2017/src/Final.vcd"
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
