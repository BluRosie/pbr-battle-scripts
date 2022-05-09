.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_113", 0

be_seq_rev_113:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005B
    changevar VAR_OP_SETMASK, VAR_06, 0x8000
    endscript

.close
