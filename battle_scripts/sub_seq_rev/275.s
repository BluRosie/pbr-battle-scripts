.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_275", 0

sub_seq_rev_275:
    if IF_MASK, VAR_BATTLE_TYPE, 0x200, _0040
    printmessage 0x359, 0x1C, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x1
    goto _0060
_0040:
    printmessage2 0x4C9, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x4
_0060:
    initcapture 0x1
    capturemon
    if IF_MASK, VAR_BATTLE_RESULT, 0x4, _00D0
    if IF_NOTEQUAL, VAR_SAFARI_BALL_COUNT, 0x0, _00D0
    playse BATTLER_ATTACKER, 0x5F1
    printmessage 0x352, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
_00D0:
    endscript

.close
