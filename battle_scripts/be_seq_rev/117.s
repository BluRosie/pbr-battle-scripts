.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_117", 0

be_seq_rev_117:
    rolloutdamagecalc
    critcalc
    damagecalc
    endscript

.close
