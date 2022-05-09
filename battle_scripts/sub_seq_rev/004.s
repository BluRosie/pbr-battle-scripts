.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_004", 0

sub_seq_rev_004:
    trynaturalcure BATTLER_PLAYER_LEFT, _0020
    changevartomonvalue VAR_OP_SET, BATTLER_PLAYER_LEFT, 0x34, 0x0
_0020:
    trynaturalcure BATTLER_PLAYER_RIGHT, _0040
    changevartomonvalue VAR_OP_SET, BATTLER_PLAYER_RIGHT, 0x34, 0x0
_0040:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x1, _021C
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x8F, _0154
    if IF_MASK, VAR_BATTLE_TYPE, 0x4, _0264
    if IF_MASK, VAR_BATTLE_TYPE, 0x8, _0160
    if IF_MASK, VAR_BATTLE_TYPE, 0x10, _0160
    printmessage 0x347, 0x1E, 0xA, 0xA, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0xA
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    if IF_MASK, VAR_BATTLE_TYPE, 0x2, _0108
    trainermessage BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    wait 0x28
    goto _01E4
_0108:
    trainermessage BATTLER_ENEMY_LEFT, 0x4
    waitmessage
    wait 0x28
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _01E4
    trainermessage BATTLER_ENEMY_LEFT, 0x8
    waitmessage
    wait 0x28
    goto _01E4
_0154:
    playsong BATTLER_PLAYER_LEFT, 1128
_0160:
    printmessage 0x3B9, 0x3B, 0xA, 0xA, 0xC, 0xC, "NaN", "NaN"
    waitmessage
    wait 0xA
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    wait 0x14
    preparetrainerslide BATTLER_ENEMY_LEFT
    waitmessage
    trainerslidein BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    wait 0x28
_01E4:
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _0258
    calcmoney
    printmessage 0x21, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x28
_021C:
    trypickup
    dopayday
    if IF_EQUAL, VAR_22, 0x0, _0258
    printmessage 0x155, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x28
_0258:
    fadeout
    waitmessage
    endscript
_0264:
    gotosubscript 283
    endscript

.close
