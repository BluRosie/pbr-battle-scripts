.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_245", 0

be_seq_rev_245:
    punishmentdamagecalc
    critcalc
    damagecalc
    endscript

.close
