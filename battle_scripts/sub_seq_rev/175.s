.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_175", 0

sub_seq_rev_175:
    checkwipeout BATTLER_DEFENDER, _02B4
    tryswitchinmon BATTLER_ATTACKER, 0x1, _02B4
    checkifcurrentmovehits _002C
    gotosubscript2 43
_002C:
    checkwhenitemmakesmovehit _003C
    gotosubscript2 43
_003C:
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0140
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x2000000, _0140
    checkbattlersequal BATTLER_ATTACKER, BATTLER_DEFENDER, _0140
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _0140
    printmessage 0x187, 0x9, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN"
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_HP_TEMP
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    incrementgamestat BATTLER_FAINTED, 0x1, 0x29
    incrementgamestat BATTLER_FAINTED, 0x0, 0x45
_0140:
    changevar2 VAR_OP_GET_RESULT, VAR_FAINTED_BATTLER, VAR_ITEM_TEMP
    changevar2 VAR_OP_SET, VAR_FAINTED_BATTLER, VAR_DEFENDER
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _01A0
    trygrudge _01A0
    printmessage 0x238, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_01A0:
    changevar2 VAR_OP_SET, VAR_FAINTED_BATTLER, VAR_ITEM_TEMP
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _02B4
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_ATTACKER
    printmessage 0x42B, 0x12, 0x6, 0x6, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    gotosubscript 153
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _02B4
    trynaturalcure BATTLER_ATTACKER, _0238
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_0238:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    deletepokemon BATTLER_ATTACKER
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_60, 0x10
    changevar VAR_OP_CLEARMASK, VAR_06, 0x80
    changevar VAR_OP_SET, VAR_47, 0x0
    jumptosubseq 10
_02B4:
    endscript

.close
