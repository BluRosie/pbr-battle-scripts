.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_036", 0

be_seq_rev_036:
    random 2, 3
    changevar VAR_OP_ADD, VAR_09, 0x80000000
    changevar2 VAR_OP_SET, VAR_ADD_STATUS2, VAR_09
    critcalc
    damagecalc
    endscript

.close
