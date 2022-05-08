.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_154", 0

be_seq_rev_154:
    changevar VAR_OP_SETMASK, VAR_06, 0x8000
    critcalc
    beatupdamagecalc
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000066
    changevar VAR_OP_SETMASK, VAR_06, 0x10000
    endscript

.close
