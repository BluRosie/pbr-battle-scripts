.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_266", 0

be_seq_rev_266:
    if IF_MASK, VAR_SIDE_EFFECT_OPPONENT, 0x80, _0048
    changevar VAR_OP_SETMASK, VAR_SIDE_EFFECT_OPPONENT, 0x80
    preparemessage 0x435, 0x1, 0x13, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_0048:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
