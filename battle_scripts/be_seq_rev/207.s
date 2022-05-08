.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_207", 0

be_seq_rev_207:
    changevar VAR_OP_SETMASK, VAR_06, 0x4
    critcalc
    damagecalc
    endscript

.close
