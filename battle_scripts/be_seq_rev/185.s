.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_185", 0

be_seq_rev_185:
    dorevenge
    critcalc
    damagecalc
    endscript

.close
