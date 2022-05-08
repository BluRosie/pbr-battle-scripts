.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_214", 0

sub_seq_rev_214:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    endscript

.close
