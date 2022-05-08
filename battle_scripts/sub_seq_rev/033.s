.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_033", 0

sub_seq_rev_033:
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _00F0
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_54
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _0098
    damagediv 32, 2
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x7B, _0098
    getitempower BATTLER_ATTACKER, VAR_09
    changevar VAR_OP_ADD, VAR_09, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_09
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_0098:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    printmessage 0x8B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_00F0:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
