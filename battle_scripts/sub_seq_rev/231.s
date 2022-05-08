.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_231", 0

sub_seq_rev_231:
    if IF_EQUAL, VAR_43, 0x1, _008C
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _004C
    printmessage 0xB, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    yesnobox 0x3
    yesnowait _004C, _0064
_004C:
    showmonlist
    waitformonselection
    switchindataupdate BATTLER_REPLACE
    goto _0104
_0064:
    tryescape BATTLER_PLAYER, _0080
    gotosubscript 8
    goto _004C
_0080:
    gotosubscript 3
    endscript
_008C:
    showmonlist
    waitformonselection
_0094:
    switchindataupdate BATTLER_REPLACE
    printmessage 0x343, 0x3A, 0x6, 0x6, 0x6, 0x3, "NaN", "NaN"
    waitmessage
    yesnobox 0x4
    yesnowait _00D0, _0104
_00D0:
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER_TEMP, VAR_SWITCHED_BATTLER
    monlist
    monlistwait _00F4
    gotosubscript 9
_00F4:
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_SWITCHED_BATTLER_TEMP
_0104:
    loadballgfx
    initballguage BATTLER_REPLACE
    waitmessage
    sentoutmessage BATTLER_REPLACE
    waitmessage
    deleteballguage BATTLER_REPLACE
    waitmessage
    deleteballgfx
    pokemonappear BATTLER_REPLACE
    waitmessage
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_NOTMASK, VAR_06, 0xF000000, _016C
    gotosubscript 6
_016C:
    jumpifcantswitch _0094
    endscript

.close
