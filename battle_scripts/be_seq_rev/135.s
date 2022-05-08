.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_135", 0

be_seq_rev_135:
    hiddenpowerdamagecalc
    critcalc
    damagecalc
    endscript

.close
