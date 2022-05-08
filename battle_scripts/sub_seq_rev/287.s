.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_287", 0

sub_seq_rev_287:
    togglevanish BATTLER_xFF, 0x0
    waitmessage
    endscript

.close
