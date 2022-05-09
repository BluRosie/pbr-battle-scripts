.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_261", 0

sub_seq_rev_261:
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x2F, 0x0
    changevar VAR_OP_SET, VAR_HP_TEMP, 0x7FFF
    healthbarupdate BATTLER_ATTACKER
    gotosubscript 76
    tryfaintmon BATTLER_ATTACKER
    changevar VAR_OP_CLEARMASK, VAR_06, 0xF000000
    gotosubscript 6
_0054:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _01CC
    showmonlist
    waitformonselection
    switchindataupdate BATTLER_REPLACE
    sentoutmessage BATTLER_REPLACE
    waitmessage
    pokemonappear BATTLER_REPLACE
    waitmessage
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_NOTMASK, VAR_06, 0xF000000, _00D4
    gotosubscript 6
    tryswitchinmon BATTLER_ATTACKER, 0x1, _01CC
    goto _0054
_00D4:
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
    setstatusicon BATTLER_ATTACKER, 0x0
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x27, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x1F, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x28, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x20, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x29, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x21, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2A, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x22, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    preparemessage 0x3EE, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    gotosubscript 136
_01CC:
    endscript

.close
