.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_183", 0

be_seq_rev_183:
    trymagiccoat _002C
    preparemessage 0x23B, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_002C:
    changevar VAR_OP_SET, VAR_10, 0x40
    endscript

.close
