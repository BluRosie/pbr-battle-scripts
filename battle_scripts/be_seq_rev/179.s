.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_179", 0

be_seq_rev_179:
    trywish _000C
    endscript
_000C:
    changevar VAR_OP_SET, VAR_10, 0x40
    endscript

.close
