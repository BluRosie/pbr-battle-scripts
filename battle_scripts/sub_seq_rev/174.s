.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_174", 0

sub_seq_rev_174:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x421, 0x22, 0x1, 0xFF, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
