.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_062", 0

sub_seq_rev_062:
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x35, 0x100000
    printmessage 0x114, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
