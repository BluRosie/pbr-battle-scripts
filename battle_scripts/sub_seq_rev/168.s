.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_168", 0

sub_seq_rev_168:
    if IF_MASK, VAR_10, 0x10001, _031C
    gotosubscript 76
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x13, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x13, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x13, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x13, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x14, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x14, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x14, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x14, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x16, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x16, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x16, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x16, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x17, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x17, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x17, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x17, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x15, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x15, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x15, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x15, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x18, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x18, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x18, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x18, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x19, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x19, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x19, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x19, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x35, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x35, VAR_43
    if IF_MASK, VAR_09, 0x100000, _02A4
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x35, 0x100000
    goto _02B8
_02A4:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, 0x100000
_02B8:
    if IF_MASK, VAR_43, 0x100000, _02E8
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x100000
    goto _02FC
_02E8:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x100000
_02FC:
    printmessage 0x400, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_031C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
