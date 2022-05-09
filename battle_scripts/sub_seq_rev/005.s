.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_005", 0

sub_seq_rev_005:
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _0114
    if IF_MASK, VAR_BATTLE_TYPE, 0x4, _0108
    printmessage 0x24, 0x8, 0x3, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _00CC
    calcmoney
    if IF_EQUAL, VAR_22, 0x0, _00CC
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _00AC
    printmessage 0x22, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    goto _00CC
_00AC:
    printmessage 0x23, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_00CC:
    printmessage 0x26, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    printmessage 0x25, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    fadeout
    waitmessage
    endscript
_0108:
    gotosubscript 283
    endscript
_0114:
    ifmonstat IF_EQUAL, BATTLER_ENEMY_LEFT, MON_DATA_HP, 0x0, _0134
    returnpokemon BATTLER_ENEMY_LEFT
_0134:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x2, _0168
    ifmonstat IF_EQUAL, BATTLER_ENEMY_RIGHT, MON_DATA_HP, 0x0, _0168
    returnpokemon BATTLER_ENEMY_RIGHT
_0168:
    waitmessage
    preparehpgaugeslide BATTLER_OPPONENT
    waitmessage
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_LEFT, 0x64
    waitmessage
    wait 0x14
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x8, _01F0
    preparetrainerslide BATTLER_ENEMY_LEFT
    waitmessage
    trainerslidein BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_RIGHT, 0x64
    waitmessage
    wait 0x28
    goto _01F8
_01F0:
    wait 0x14
_01F8:
    setbattleresult
    fadeout
    waitmessage
    endscript

.close
