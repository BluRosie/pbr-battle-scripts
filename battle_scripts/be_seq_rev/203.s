.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_203", 0

be_seq_rev_203:
    weatherballdamagecalc
    critcalc
    damagecalc
    endscript

.close
