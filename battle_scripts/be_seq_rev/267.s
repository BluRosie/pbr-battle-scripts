.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_267", 0

be_seq_rev_267:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0xA000008E
    critcalc
    damagecalc
    endscript

.close
