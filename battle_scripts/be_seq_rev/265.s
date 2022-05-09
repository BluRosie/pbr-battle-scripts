.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_265", 0

be_seq_rev_265:
    moldbreakerabilitycheck 0x0, BATTLER_DEFENDER, ABILITY_OBLIVIOUS, _00CC
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_GENDER, 0x2, _0084
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_GENDER, 0x2, _0084
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x1D, VAR_09
    ifmonstat2 IF_EQUAL, BATTLER_ATTACKER, VAR_ITEM_TEMP, 0x9, _0084
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000031
    endscript
_0084:
    printattackmessage
    waitmessage
    wait 0xA
    cmd_DB BATTLER_DEFENDER
    printmessage 0x4D3, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript
_00CC:
    printattackmessage
    waitmessage
    wait 0xA
    cmd_DB BATTLER_DEFENDER
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
