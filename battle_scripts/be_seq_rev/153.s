.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_153", 0

be_seq_rev_153:
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000065
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
