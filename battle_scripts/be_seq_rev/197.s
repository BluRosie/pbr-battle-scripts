.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_197", 0

be_seq_rev_197:
    critcalc
    damagecalc
    dosecretpower
    endscript

.close
