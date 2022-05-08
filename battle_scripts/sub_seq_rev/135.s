.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_135", 0

sub_seq_rev_135:
    if IF_MASK, VAR_10, 0x10001, _0170
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x19, _0170
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0170
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _0170
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x0, _0170
    gotosubscript 76
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_AND, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x48, VAR_43
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x1A, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x1A, VAR_43
    if IF_NOTEQUAL, VAR_43, 0x70, _0148
    changevar2 VAR_OP_SET, VAR_43, VAR_TURNS
    changevar VAR_OP_ADD, VAR_43, 0x1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x59, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x60, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x61, 0x0
_0148:
    printmessage 0x20B, 0x20, 0x1, 0x2, 0x2, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0170:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
