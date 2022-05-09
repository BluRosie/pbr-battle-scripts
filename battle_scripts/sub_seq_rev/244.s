.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_244", 0

sub_seq_rev_244:
    printmessage 0x472, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x3B, 0x4000000
    endscript

.close
