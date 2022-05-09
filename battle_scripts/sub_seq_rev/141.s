.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_141", 0

sub_seq_rev_141:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INSOMNIA, _010C
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_VITAL_SPIRIT, _010C
    checkcloudnine _0058
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _0058
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _010C
_0058:
    printattackmessage
    waitmessage
    checknostatus BATTLER_ADDL_EFFECT, _0138
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SOUNDPROOF, _0094
    if IF_MASK, VAR_FIELD_EFFECT, 0xF00, _0138
_0094:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0138
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0150
    if IF_MASK, VAR_10, 0x10001, _0138
    tryyawn _0138
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    printmessage 0x221, 0x9, 0x1, 0x7, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_010C:
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x2DE, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _0168
_0138:
    wait 0x14
    gotosubscript 75
    goto _0184
_0150:
    wait 0x14
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0168:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_0184:
    endscript

.close
