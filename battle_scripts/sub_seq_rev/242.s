.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_242", 0

sub_seq_rev_242:
    printmessage 0x40F, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x3B, 0x8000000
    endscript

.close
