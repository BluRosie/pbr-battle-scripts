.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_100", 0

be_seq_rev_100:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0xA0000051
    endscript

.close
