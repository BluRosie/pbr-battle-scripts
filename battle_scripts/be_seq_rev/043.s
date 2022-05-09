.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_043", 0

be_seq_rev_043:
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    critcalc
    damagecalc
    endscript

.close
