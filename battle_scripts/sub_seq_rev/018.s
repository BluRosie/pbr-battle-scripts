.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_018", 0

sub_seq_rev_018:
    if IF_NOTEQUAL, VAR_05, 0x4, _00CC
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INSOMNIA, _0340
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_VITAL_SPIRIT, _0340
    checkcloudnine _006C
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _006C
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _0340
_006C:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x7, _0460
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SOUNDPROOF, _00AC
    if IF_MASK, VAR_FIELD_EFFECT, 0xF00, _04B0
_00AC:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _03CC
    goto _0254
_00CC:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INSOMNIA, _0340
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_VITAL_SPIRIT, _0340
    checkcloudnine _0124
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _0124
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _0340
_0124:
    if IF_NOTEQUAL, VAR_05, 0x2, _014C
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _03CC
_014C:
    if IF_NOTEQUAL, VAR_05, 0x1, _0168
    printattackmessage
    waitmessage
_0168:
    if IF_EQUAL, VAR_05, 0x3, _0188
    checknostatus BATTLER_ADDL_EFFECT, _03CC
_0188:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x7, _0460
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SOUNDPROOF, _01C8
    if IF_MASK, VAR_FIELD_EFFECT, 0xF00, _04B0
_01C8:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _03CC
    if IF_EQUAL, VAR_05, 0x3, _0254
    if IF_MASK, VAR_10, 0x10001, _03CC
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _052C
    cmd_DD 0x0, 0x7, 0x68
    if IF_NOTEQUAL, VAR_05, 0x1, _0264
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    goto _0264
_0254:
    cmd_DD 0x0, 0x7, 0x5A
_0264:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x1
    waitmessage
    random 3, 2
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, VAR_09
    if IF_EQUAL, VAR_05, 0x3, _02C0
    printmessage 0x2F, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02D8
_02C0:
    printmessage 0x32, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
_02D8:
    waitmessage
    wait 0x14
    setstatusicon BATTLER_ADDL_EFFECT, 0x1
    waitmessage
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_MOVE_STATE, 0x200400C0, _031C
    clearsomeflag BATTLER_ADDL_EFFECT
    goto _033C
_031C:
    clearsomeflag BATTLER_ADDL_EFFECT
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ACTIVE_BATTLER
    gotosubscript 287
_033C:
    endscript
_0340:
    if IF_EQUAL, VAR_05, 0x2, _057C
    if IF_EQUAL, VAR_05, 0x3, _057C
    if IF_EQUAL, VAR_05, 0x4, _038C
    printattackmessage
    waitmessage
    wait 0x14
_038C:
    printmessage 0x149, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _0560
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _0560
_03CC:
    if IF_EQUAL, VAR_05, 0x2, _057C
    if IF_EQUAL, VAR_05, 0x3, _057C
    if IF_EQUAL, VAR_05, 0x4, _057C
    wait 0x14
    getmoveparameter 0x7
    if IF_EQUAL, VAR_09, 0x4, _0450
    if IF_EQUAL, VAR_09, 0x8, _0450
    gotosubscript 75
    goto _057C
_0450:
    gotosubscript 176
    goto _057C
_0460:
    if IF_EQUAL, VAR_05, 0x2, _057C
    if IF_EQUAL, VAR_05, 0x3, _057C
    wait 0x14
    cmd_DB BATTLER_ADDL_EFFECT
    printmessage 0x39, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0560
_04B0:
    if IF_EQUAL, VAR_05, 0x2, _057C
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_2, 0x70, _0504
    wait 0x14
    cmd_DB BATTLER_ADDL_EFFECT
    printmessage 0x146, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0560
_0504:
    wait 0x14
    cmd_DB BATTLER_ADDL_EFFECT
    printmessage 0x143, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0560
_052C:
    if IF_EQUAL, VAR_05, 0x2, _057C
    wait 0x14
    cmd_DB BATTLER_ADDL_EFFECT
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0560:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_057C:
    endscript

.close
