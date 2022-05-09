.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_162", 0

be_seq_rev_162:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, 0x0, _013C
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x45, VAR_HP_TEMP
    changevar VAR_OP_SUB, VAR_HP_TEMP, 0x3
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar VAR_OP_SET, VAR_09, 0x1
    changevar2 VAR_OP_LSH, VAR_09, VAR_HP_TEMP
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv2 32, 9
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x45, 0x0
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x46, VAR_09
    changevartomonvalue2 VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, 0x14, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x47, VAR_09
    changevartomonvalue2 VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, 0x17, VAR_09
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x46, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x47, 0x0
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000068
    endscript
_013C:
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x32F, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
