.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_130", 0

be_seq_rev_130:
    if IF_MASK, VAR_RULESET, 0x1, _0038
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    changevar VAR_OP_SET, VAR_DAMAGE, 0xFFFFFFEC
    endscript
_0038:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
