.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_025", 0

sub_seq_rev_025:
    if IF_NOTEQUAL, VAR_05, 0x5, _00D4
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_WATER_VEIL, _0350
    checkcloudnine _0058
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _0058
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _0350
_0058:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x10, _0350
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0xA, _0350
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0xA, _0350
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0350
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0350
    goto _0238
_00D4:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_WATER_VEIL, _0424
    checkcloudnine _0118
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _0118
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _0424
_0118:
    if IF_NOTEQUAL, VAR_05, 0x2, _0140
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0354
_0140:
    if IF_NOTEQUAL, VAR_05, 0x1, _015C
    printattackmessage
    waitmessage
_015C:
    if IF_EQUAL, VAR_05, 0x3, _017C
    checknostatus BATTLER_ADDL_EFFECT, _0354
_017C:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x10, _0394
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0xA, _03DC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0xA, _03DC
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0354
    if IF_EQUAL, VAR_05, 0x3, _0238
    if IF_MASK, VAR_10, 0x10001, _0354
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _049C
    if IF_NOTEQUAL, VAR_05, 0x1, _0238
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_0238:
    if IF_NOTEQUAL, VAR_05, 0x5, _0264
    setstatus2effect BATTLER_ADDL_EFFECT, 0xA
    waitmessage
    wait 0xA
_0264:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x3
    waitmessage
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x10
    if IF_EQUAL, VAR_05, 0x3, _02C8
    if IF_EQUAL, VAR_05, 0x5, _02E8
    printmessage 0x55, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02FC
_02C8:
    printmessage 0x58, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
    goto _02FC
_02E8:
    printmessage 0x493, 0xF, 0x7, 0xFF, "NaN", "NaN", "NaN", "NaN"
_02FC:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x3
    wait 0x14
    if IF_MASK, VAR_06, 0x80, _0340
    changevar VAR_OP_SETMASK, VAR_06, 0x80
    goto _0350
_0340:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x80
_0350:
    endscript
_0354:
    if IF_EQUAL, VAR_05, 0x2, _04E4
    if IF_EQUAL, VAR_05, 0x3, _04E4
    wait 0x14
    gotosubscript 75
    goto _04E4
_0394:
    if IF_EQUAL, VAR_05, 0x2, _04E4
    if IF_EQUAL, VAR_05, 0x3, _04E4
    wait 0x14
    printmessage 0x62, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _04C8
_03DC:
    if IF_EQUAL, VAR_05, 0x2, _04E4
    if IF_EQUAL, VAR_05, 0x3, _04E4
    wait 0x14
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _04C8
_0424:
    if IF_EQUAL, VAR_05, 0x2, _04E4
    if IF_EQUAL, VAR_05, 0x3, _04E4
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x2AE, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _04C8
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _04C8
_049C:
    if IF_EQUAL, VAR_05, 0x2, _04E4
    wait 0x14
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_04C8:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_04E4:
    endscript

.close
