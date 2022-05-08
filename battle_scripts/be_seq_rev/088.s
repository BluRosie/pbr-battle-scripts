.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_088", 0

be_seq_rev_088:
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    random 10, 5
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2B, VAR_DAMAGE
    changevar2 VAR_OP_MUL, VAR_DAMAGE, VAR_09
    changevar VAR_OP_DIV, VAR_DAMAGE, 0xA
    if IF_NOTEQUAL, VAR_DAMAGE, 0x0, _0074
    changevar VAR_OP_SET, VAR_DAMAGE, 0x1
_0074:
    changevar VAR_OP_MUL, VAR_DAMAGE, 0xFFFFFFFF
    endscript

.close
