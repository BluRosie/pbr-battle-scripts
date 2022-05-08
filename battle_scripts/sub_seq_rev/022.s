.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_022", 0

sub_seq_rev_022:
    if IF_NOTEQUAL, VAR_05, 0x6, _0060
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _02C8
    checkcloudnine _00CC
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _00CC
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _02C8
    goto _00CC
_0060:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _02C8
    checkcloudnine _00A4
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _00A4
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _02C8
_00A4:
    if IF_NOTEQUAL, VAR_05, 0x2, _00CC
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0368
_00CC:
    if IF_NOTEQUAL, VAR_05, 0x1, _00E8
    printattackmessage
    waitmessage
_00E8:
    if IF_EQUAL, VAR_05, 0x3, _0108
    checknostatus BATTLER_ADDL_EFFECT, _0368
_0108:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x8, _03D0
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x80, _03D0
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0x3, _042C
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0x3, _042C
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0x8, _042C
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0x8, _042C
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0368
    if IF_EQUAL, VAR_05, 0x3, _020C
    if IF_MASK, VAR_10, 0x10001, _0368
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _049C
    if IF_NOTEQUAL, VAR_05, 0x1, _020C
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_020C:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x2
    waitmessage
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x8
    if IF_EQUAL, VAR_05, 0x3, _025C
    printmessage 0x3F, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0274
_025C:
    printmessage 0x42, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
_0274:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x2
    wait 0x14
    if IF_MASK, VAR_06, 0x80, _02B4
    changevar VAR_OP_SETMASK, VAR_06, 0x80
    endscript
_02B4:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x80
    endscript
_02C8:
    if IF_EQUAL, VAR_05, 0x2, _050C
    if IF_EQUAL, VAR_05, 0x3, _050C
    if IF_EQUAL, VAR_05, 0x4, _0328
    if IF_EQUAL, VAR_05, 0x6, _0328
    printattackmessage
    waitmessage
    wait 0x14
_0328:
    printmessage 0x28A, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _04F0
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _04F0
_0368:
    if IF_EQUAL, VAR_05, 0x2, _050C
    if IF_EQUAL, VAR_05, 0x3, _050C
    if IF_EQUAL, VAR_05, 0x4, _050C
    if IF_EQUAL, VAR_05, 0x6, _050C
    wait 0x14
    gotosubscript 75
    goto _050C
_03D0:
    if IF_EQUAL, VAR_05, 0x2, _050C
    if IF_EQUAL, VAR_05, 0x3, _050C
    if IF_EQUAL, VAR_05, 0x6, _050C
    wait 0x14
    printmessage 0x4C, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _04F0
_042C:
    if IF_EQUAL, VAR_05, 0x2, _050C
    if IF_EQUAL, VAR_05, 0x4, _050C
    if IF_EQUAL, VAR_05, 0x6, _050C
    if IF_EQUAL, VAR_05, 0x3, _050C
    wait 0x14
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _04F0
_049C:
    if IF_EQUAL, VAR_05, 0x2, _050C
    if IF_EQUAL, VAR_05, 0x4, _050C
    if IF_EQUAL, VAR_05, 0x6, _050C
    wait 0x14
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_04F0:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_050C:
    endscript

.close
