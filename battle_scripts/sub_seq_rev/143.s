.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_143", 0

sub_seq_rev_143:
    if IF_MASK, VAR_10, 0x10001, _0244
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x19, _0244
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x19, _0244
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _0244
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0244
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x0, _00A4
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x0, _0244
_00A4:
    gotosubscript 76
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_AND, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x48, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x48, VAR_43
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x1A, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x1A, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x1A, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1A, VAR_09
    if IF_NOTEQUAL, VAR_43, 0x70, _01B4
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_ADD, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x59, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x60, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x61, 0x0
_01B4:
    if IF_NOTEQUAL, VAR_09, 0x70, _0224
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_ADD, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x59, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x60, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x61, 0x0
_0224:
    printmessage 0x22F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0244:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
