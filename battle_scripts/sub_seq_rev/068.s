.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_068", 0

sub_seq_rev_068:
    checknostatus BATTLER_DEFENDER, _00FC
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_1, 0xC, _0110
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_2, 0xC, _0110
    printattackmessage
    waitmessage
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x4, _00BC
    if IF_MASK, VAR_10, 0x10001, _00BC
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, VAR_ATTACKER
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x4
    printmessage 0x122, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00EC
_00BC:
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    wait 0x14
    cmd_DB BATTLER_DEFENDER
    printmessage 0x125, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_00EC:
    waitmessage
    wait 0x14
    endscript
_00FC:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript
_0110:
    changevar VAR_OP_SETMASK, VAR_10, 0x8
    endscript

.close
