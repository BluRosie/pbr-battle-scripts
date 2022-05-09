.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_003", 0

sub_seq_rev_003:
    trynaturalcure BATTLER_PLAYER_LEFT, _0020
    changevartomonvalue VAR_OP_SET, BATTLER_PLAYER_LEFT, 0x34, 0x0
_0020:
    trynaturalcure BATTLER_PLAYER_RIGHT, _0040
    changevartomonvalue VAR_OP_SET, BATTLER_PLAYER_RIGHT, 0x34, 0x0
_0040:
    goto _013C
    playse BATTLER_ATTACKER, 0x6FF
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _0110
    if IF_MASK, VAR_BATTLE_TYPE, 0x4, _013C
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_RUN_AWAY, _00B8
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x3E, _00D4
    printmessage 0x30D, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00E8
_00B8:
    printmessage 0x30F, 0xB, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    goto _00E8
_00D4:
    printmessage 0x30E, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
_00E8:
    waitmessage
    wait 0x14
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    endscript
_0110:
    giveupmessage
    waitmessage
    wait 0x14
    fadeout
    waitmessage
    changevar VAR_OP_CLEARMASK, VAR_BATTLE_RESULT, 0x40
    endscript
_013C:
    runawaymessage
    waitmessage
    wait 0x14
    fadeout
    waitmessage
    changevar VAR_OP_CLEARMASK, VAR_BATTLE_RESULT, 0x40
    endscript

.close
