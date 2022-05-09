.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_249", 0

be_seq_rev_249:
    trytoxicspikes _002C
    preparemessage 0x427, 0x1, 0x13, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_002C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
