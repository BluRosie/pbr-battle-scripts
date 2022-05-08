.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_016", 0

sub_seq_rev_016:
    if IF_EQUAL, VAR_WAS_MOVE_CRITICAL, 0x1, _00C8
    printmessage 0x306, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    abilitycheck 0x1, BATTLER_DEFENDER, ABILITY_ANGER_POINT, _00C8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _00C8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0xC, _00C8
    setstatus2effect BATTLER_DEFENDER, 0xC
    waitmessage
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x13, 0xC
    changevar VAR_OP_SET, VAR_22, 0x1
    printmessage 0x445, 0x27, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_00C8:
    endscript

.close
