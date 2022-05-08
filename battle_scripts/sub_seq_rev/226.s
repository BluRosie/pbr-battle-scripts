.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_226", 0

sub_seq_rev_226:
    gotosubscript 147
    if IF_NOTMASK, VAR_06, 0x400000, _0024
    gotosubscript 31
_0024:
    endscript

.close
