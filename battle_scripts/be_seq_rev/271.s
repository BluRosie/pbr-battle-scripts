.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_271", 0

be_seq_rev_271:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000032
    critcalc
    damagecalc
    endscript

.close
