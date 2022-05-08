.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_027", 0

sub_seq_rev_027:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_MAGMA_ARMOR, _0214
    checkcloudnine _0030
    if IF_MASK, VAR_FIELD_EFFECT, 0x30, _0190
_0030:
    if IF_NOTEQUAL, VAR_05, 0x2, _0058
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0190
_0058:
    if IF_NOTEQUAL, VAR_05, 0x1, _0074
    printattackmessage
    waitmessage
_0074:
    checknostatus BATTLER_ADDL_EFFECT, _0190
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x20, _01BC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0xF, _01E0
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0xF, _01E0
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0190
    if IF_MASK, VAR_10, 0x10001, _0190
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0240
    cmd_DD 0x1, 0x7, 0x1E
    if IF_NOTEQUAL, VAR_05, 0x1, _0138
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_0138:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x4
    waitmessage
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x20
    clearsomeflag BATTLER_ADDL_EFFECT
    printmessage 0x65, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x4
    wait 0x14
    endscript
_0190:
    if IF_EQUAL, VAR_05, 0x2, _0288
    wait 0x14
    gotosubscript 75
    goto _0288
_01BC:
    if IF_EQUAL, VAR_05, 0x2, _0288
    wait 0x14
    goto _026C
_01E0:
    if IF_EQUAL, VAR_05, 0x2, _0288
    wait 0x14
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _026C
_0214:
    if IF_EQUAL, VAR_05, 0x2, _0288
    printattackmessage
    waitmessage
    wait 0x14
    goto _026C
_0240:
    if IF_EQUAL, VAR_05, 0x2, _0288
    wait 0x14
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_026C:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_0288:
    endscript

.close
