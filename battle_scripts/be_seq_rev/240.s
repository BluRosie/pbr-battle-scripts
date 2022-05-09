.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_240", 0

be_seq_rev_240:
    if IF_MASK, VAR_SIDE_EFFECT_PLAYER, 0x7000, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000007D
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
