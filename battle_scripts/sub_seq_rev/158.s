.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_158", 0

sub_seq_rev_158:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x400000
    printmessage 0x1B0, 0x9, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
