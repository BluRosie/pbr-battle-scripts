.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_264", 0

be_seq_rev_264:
    changevar VAR_OP_SETMASK, VAR_10, 0x2000
    endscript

.close
