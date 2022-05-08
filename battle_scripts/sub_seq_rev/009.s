.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_009", 0

sub_seq_rev_009:
    trynaturalcure BATTLER_REPLACE, _0020
    changevartomonvalue VAR_OP_SET, BATTLER_REPLACE, 0x34, 0x0
_0020:
    returnmessage BATTLER_REPLACE
    waitmessage
    gotosubscript 153
    ifmonstat IF_NOTEQUAL, BATTLER_REPLACE, MON_DATA_HP, 0x0, _0054
    goto _006C
_0054:
    returnpokemon BATTLER_REPLACE
    waitmessage
    preparehpgaugeslide BATTLER_REPLACE
    waitmessage
_006C:
    switchindataupdate BATTLER_REPLACE
    loadballgfx
    initballguage BATTLER_REPLACE
    waitmessage
    if IF_EQUAL, VAR_43, 0x1, _00A8
    sentoutmessage BATTLER_REPLACE
    goto _00B8
_00A8:
    printmessage 0x3D3, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
_00B8:
    waitmessage
    deleteballguage BATTLER_REPLACE
    waitmessage
    deleteballgfx
    pokemonappear BATTLER_REPLACE
    waitmessage
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_GREATER, VAR_FAINTED_BATTLER, 0x3, _013C
    changevar2 VAR_OP_TO_BIT, VAR_43, VAR_FAINTED_BATTLER
    changevar VAR_OP_LSH, VAR_43, 0x18
    if2 IF_NOTMASK, VAR_06, 0x2B, _013C
    gotosubscript 6
_013C:
    endscript

.close
