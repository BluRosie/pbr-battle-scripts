.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_239", 0

sub_seq_rev_239:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
