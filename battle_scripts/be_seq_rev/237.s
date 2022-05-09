.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_237", 0

be_seq_rev_237:
    wringoutdamagecalc
    critcalc
    damagecalc
    endscript

.close
