.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_272", 0

be_seq_rev_272:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _00C8
    if IF_MASK, VAR_06, 0x200, _00C8
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x62, _0078
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x20000000
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_0078:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x20000000
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3C, 0x20000000
    gotosubscript 217
    togglevanish BATTLER_ATTACKER, 0x1
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _00E0
_00C8:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000004F
    critcalc
    damagecalc
_00E0:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x3B, 0x200400C0
    gotosubscript 259
    endscript

.close
