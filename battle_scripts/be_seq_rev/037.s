.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_037", 0

be_seq_rev_037:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000009
    endscript

.close
