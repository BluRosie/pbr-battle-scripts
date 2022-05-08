.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_121", 0

sub_seq_rev_121:
    printpreparedmessage
    waitmessage
    wait 0x14
    checkhitrate BATTLER_ATTACKER2, BATTLER_xFF, MOVE_SPIT_UP, _01D8
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    seteffectsecondary BATTLER_xFF, BATTLER_ATTACKER2, BATTLER_xFF
    waitmessage
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _00EC
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_xFF, VAR_90, 0x20, _00B4
    changevartomonvalue2 VAR_OP_SUB, BATTLER_xFF, 0x5A, VAR_HP_TEMP
    goto _00DC
_00B4:
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x5A, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x1000000
_00DC:
    gotosubscript 90
    goto _0174
_00EC:
    cmd_D0_checkhpsomething BATTLER_xFF
    gotosubscript 2
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x800000, _0174
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_HP, 0x0, _0174
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_STAT_STAGE_ATTACK, 0xC, _0174
    changevartomonvalue VAR_OP_ADD, BATTLER_xFF, 0x13, 0x1
    printmessage 0x16B, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_0174:
    if IF_NOTMASK, VAR_10, 0x100, _01D4
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x390, 0xF, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    checkitemeffect 0x1, BATTLER_xFF, 0x66, _01D4
    removeitem BATTLER_DEFENDER
_01D4:
    endscript
_01D8:
    wait 0x14
    printmessage 0x31C, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
