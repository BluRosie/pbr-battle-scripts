.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_161", 0

be_seq_rev_161:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, 0x0, _0104
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x45, VAR_ABILITY_TEMP
    changevar VAR_OP_MUL, VAR_ABILITY_TEMP, 0x64
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x45, 0x0
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x46, VAR_09
    changevartomonvalue2 VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, 0x14, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x47, VAR_09
    changevartomonvalue2 VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, 0x17, VAR_09
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x46, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x47, 0x0
    changevar VAR_OP_SETMASK, VAR_06, 0x40000
    preparemessage 0x3E2, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    critcalc
    damagecalc2
    endscript
_0104:
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x32E, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
