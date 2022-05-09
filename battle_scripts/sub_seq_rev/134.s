.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_134", 0

sub_seq_rev_134:
    if IF_MASK, VAR_10, 0x10001, _0184
    checknostatus BATTLER_DEFENDER, _0184
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0184
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _0184
    trytrick _0184, _0144
    gotosubscript 76
    printmessage 0x1FE, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x37, VAR_43
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x37, VAR_43
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x0, _0108
    printmessage 0x201, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_0108:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x0, _0140
    printmessage 0x201, 0xF, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_0140:
    endscript
_0144:
    printattackmessage
    waitmessage
    wait 0x14
    cmd_DB BATTLER_DEFENDER
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0184:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
