.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_265", 0

sub_seq_rev_265:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x485, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x54, 0x1
    gotosubscript 290
    endscript

.close
