.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_062", 0

be_seq_rev_062:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000032
    endscript

.close
