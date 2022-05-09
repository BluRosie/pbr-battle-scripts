.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_096", 0

sub_seq_rev_096:
    changevar VAR_OP_SET, VAR_34, 0x18
    gotosubscript 12
    changevar VAR_OP_SETMASK, VAR_06, 0x4001
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, 0xF
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x10
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

.close
