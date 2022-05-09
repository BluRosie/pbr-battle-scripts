.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_031", 0

sub_seq_rev_031:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LIMBER, _02AC
    checkcloudnine _0044
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _0044
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _02AC
_0044:
    if IF_NOTEQUAL, VAR_05, 0x2, _006C
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _01F0
_006C:
    if IF_NOTEQUAL, VAR_05, 0x1, _0088
    printattackmessage
    waitmessage
_0088:
    if IF_EQUAL, VAR_05, 0x3, _00A8
    checknostatus BATTLER_ADDL_EFFECT, _01F0
_00A8:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x40, _0230
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _01F0
    if IF_EQUAL, VAR_05, 0x3, _0134
    if IF_MASK, VAR_10, 0x10001, _01F0
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0324
    if IF_NOTEQUAL, VAR_05, 0x1, _0134
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_0134:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x5
    waitmessage
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x40
    if IF_EQUAL, VAR_05, 0x3, _0184
    printmessage 0x78, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _019C
_0184:
    printmessage 0x7B, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
_019C:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x5
    wait 0x14
    if IF_MASK, VAR_06, 0x80, _01DC
    changevar VAR_OP_SETMASK, VAR_06, 0x80
    endscript
_01DC:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x80
    endscript
_01F0:
    if IF_EQUAL, VAR_05, 0x2, _036C
    if IF_EQUAL, VAR_05, 0x3, _036C
    wait 0x14
    gotosubscript 75
    goto _036C
_0230:
    if IF_EQUAL, VAR_05, 0x2, _036C
    if IF_EQUAL, VAR_05, 0x3, _036C
    wait 0x14
    printmessage 0x85, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0350
    if IF_EQUAL, VAR_05, 0x2, _036C
    wait 0x14
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0350
_02AC:
    if IF_EQUAL, VAR_05, 0x2, _036C
    if IF_EQUAL, VAR_05, 0x3, _036C
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x284, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _0350
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _0350
_0324:
    if IF_EQUAL, VAR_05, 0x2, _036C
    wait 0x14
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0350:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_036C:
    endscript

.close
