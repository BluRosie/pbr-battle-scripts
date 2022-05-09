.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_091", 0

sub_seq_rev_091:
    if IF_MASK, VAR_10, 0x10000, _0128
    moldbreakerabilitycheck 0x0, BATTLER_DEFENDER, ABILITY_SUCTION_CUPS, _013C
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x400, _0158
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x4A, _0128
    trywhirlwind _0128
    gotosubscript 76
    trynaturalcure BATTLER_DEFENDER, _0084
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x34, 0x0
_0084:
    deletepokemon BATTLER_DEFENDER
    waitmessage
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x1, _010C
    preparehpgaugeslide BATTLER_DEFENDER
    waitmessage
    switchindataupdate BATTLER_WHIRLWINDED
    waitmessage
    pokemonappear BATTLER_DEFENDER
    waitmessage
    hpgaugeslidein BATTLER_DEFENDER
    waitmessage
    printmessage 0x25B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_DEFENDER
    gotosubscript 99
    endscript
_010C:
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    endscript
_0128:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript
_013C:
    preparemessage 0x293, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _0168
_0158:
    preparemessage 0x21E, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_0168:
    printattackmessage
    waitmessage
    wait 0x14
    printpreparedmessage
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
