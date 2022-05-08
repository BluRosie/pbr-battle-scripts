.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_055", 0

sub_seq_rev_055:
    printattackmessage
    waitmessage
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_INSOMNIA, _018C
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_VITAL_SPIRIT, _018C
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x7, _01B0
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_SOUNDPROOF, _0070
    if IF_MASK, VAR_FIELD_EFFECT, 0xF00, _01D0
_0070:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    ifmonstat2 IF_EQUAL, BATTLER_ATTACKER, VAR_47, 0x20, _0238
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xFFFFFFF8, _00D8
    printmessage 0xCD, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0108
_00D8:
    setstatusicon BATTLER_ATTACKER, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x34, 0xFFFFFFF8
    printmessage 0xD0, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_0108:
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x34, 0x3
    setstatusicon BATTLER_ATTACKER, 0x1
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xFFFFFFF8, _00D8
    printmessage 0xB8, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0268
_018C:
    wait 0x14
    printmessage 0x149, 0xB, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    goto _0258
_01B0:
    wait 0x14
    printmessage 0x39, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0258
_01D0:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x70, _0210
    wait 0x14
    cmd_DB BATTLER_ATTACKER
    printmessage 0x146, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0258
_0210:
    wait 0x14
    cmd_DB BATTLER_ATTACKER
    printmessage 0x143, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0258
_0238:
    wait 0x14
    cmd_DB BATTLER_ATTACKER
    printmessage 0xBB, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_0258:
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_0268:
    waitmessage
    wait 0x14
    endscript

.close
