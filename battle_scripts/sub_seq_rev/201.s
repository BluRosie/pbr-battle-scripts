.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_201", 0

sub_seq_rev_201:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x36E, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x14
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    gotosubscript 290
    endscript

.close
