.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_170", 0

be_seq_rev_170:
    if IF_NOTEQUAL, VAR_PHYSICAL_DAMAGE, 0x0, _0044
    if IF_NOTEQUAL, VAR_SPECIAL_DAMAGE, 0x0, _0044
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    critcalc
    damagecalc
    endscript
_0044:
    changevar VAR_OP_SETMASK, VAR_10, 0x20000
    preparemessage 0x258, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    endscript

.close
