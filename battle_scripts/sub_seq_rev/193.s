.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_193", 0

sub_seq_rev_193:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x44B, 0x24, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
