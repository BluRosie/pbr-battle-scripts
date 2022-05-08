.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_060", 0

be_seq_rev_060:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000030
    endscript

.close
