.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_200", 0

be_seq_rev_200:
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000003
    critcalc
    damagecalc
    endscript

.close
