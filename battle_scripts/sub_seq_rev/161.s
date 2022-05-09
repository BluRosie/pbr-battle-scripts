.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_161", 0

sub_seq_rev_161:
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, 0x17
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x1A
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

.close
