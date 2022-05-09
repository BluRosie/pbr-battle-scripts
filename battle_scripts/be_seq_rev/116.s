.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_116", 0

be_seq_rev_116:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x50000052
    endscript

.close
