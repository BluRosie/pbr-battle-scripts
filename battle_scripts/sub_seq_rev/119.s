.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_119", 0

sub_seq_rev_119:
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, 0xF
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x10
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x11
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x12
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x13
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

.close
