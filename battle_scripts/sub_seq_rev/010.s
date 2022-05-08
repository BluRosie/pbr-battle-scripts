.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_010", 0

sub_seq_rev_010:
    showmonlist
    waitformonselection
_0008:
    switchindataupdate BATTLER_REPLACE
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
    if IF_NOTMASK, VAR_06, 0xF000000, _0078
    gotosubscript 6
_0078:
    jumpifcantswitch _0008
    endscript

.close
