.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_120", 0

sub_seq_rev_120:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_ATTACK, 0xC, _00D4
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv 32, 2
    ifmonstat2 IF_LESSTHAN, BATTLER_ATTACKER, VAR_47, 0x20, _00D4
    gotosubscript 76
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x13, 0xC
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    setstatus2effect BATTLER_ATTACKER, 0xC
    waitmessage
    printmessage 0x1C1, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_00D4:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
