.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_049", 0

sub_seq_rev_049:
    setlightscreen _0010
    gotosubscript 53
_0010:
    endscript

.close