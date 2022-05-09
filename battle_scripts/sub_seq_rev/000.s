.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_000", 0

sub_seq_rev_000:
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _01A8
    if IF_MASK, VAR_BATTLE_TYPE, 0x20, _0264
    if IF_MASK, VAR_BATTLE_TYPE, 0x200, _02B8
    pokemonencounter BATTLER_OPPONENT
    starttrainerencounter BATTLER_PLAYER
    startencounter
    waitmessage
    changebackground
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    if IF_MASK, VAR_BATTLE_STATUS, 0x8, _00FC
    if IF_MASK, VAR_BATTLE_STATUS, 0x1, _00CC
    if IF_MASK, VAR_BATTLE_STATUS, 0x2, _00E4
    if IF_MASK, VAR_BATTLE_TYPE, 0x2, _0114
    printmessage2 0x3C5, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0128
_00CC:
    printmessage2 0x48F, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0128
_00E4:
    printmessage2 0x3C8, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0128
_00FC:
    printmessage2 0x4DE, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0128
_0114:
    printmessage2 0x3C7, 0x9, 0xA, 0xC, "NaN", "NaN", "NaN", "NaN"
_0128:
    waitmessage
    wait 0x14
    if IF_MASK, VAR_BATTLE_TYPE, 0x8, _0160
    printmessage 0x3D3, 0x2, 0x3, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0168
_0160:
    encountermessage2 BATTLER_PLAYER
_0168:
    cmd_C6 BATTLER_OPPONENT
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x0
    pokemonslidein BATTLER_PLAYER
    waitmessage
    cmd_C7 BATTLER_OPPONENT
    waitmessage
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    endscript
_01A8:
    starttrainerencounter BATTLER_ALL
    startencounter
    waitmessage
    changebackground
    loadballgfx
    initstartballguage BATTLER_OPPONENT
    initstartballguage BATTLER_PLAYER
    encountermessage BATTLER_OPPONENT
    waitmessage
    wait 0x14
    encountermessage2 BATTLER_OPPONENT
    waitmessage
    deletestartballguage BATTLER_OPPONENT
    throwpokeball BATTLER_OPPONENT, 0x0
    pokemonslidein BATTLER_OPPONENT
    waitmessage
    waitmessage
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    encountermessage2 BATTLER_PLAYER
    waitmessage
    deletestartballguage BATTLER_PLAYER
    throwpokeball BATTLER_PLAYER, 0x0
    pokemonslidein BATTLER_PLAYER
    waitmessage
    waitmessage
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    deleteballgfx
    endscript
_0264:
    pokemonencounter BATTLER_OPPONENT
    starttrainerencounter BATTLER_PLAYER
    startencounter
    waitmessage
    changebackground
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    printmessage2 0x3C5, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    endscript
_02B8:
    pokemonencounter BATTLER_OPPONENT
    starttrainerencounter BATTLER_PLAYER
    startencounter
    waitmessage
    changebackground
    hpgaugeslidewait BATTLER_OPPONENT
    waitmessage
    printmessage2 0x4C3, 0x1B, 0x4, 0x4, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    hpgaugeslidewait BATTLER_PLAYER
    waitmessage
    endscript

.close
