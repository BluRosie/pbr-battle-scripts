.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_086", 0

be_seq_rev_086:
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS1, 0xA0000049
    endscript

.close
