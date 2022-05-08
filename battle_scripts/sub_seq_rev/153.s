.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_153", 0

sub_seq_rev_153:
    gotosubscript 279
_0008:
    trypursuit _02FC
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    critcalc
    damagecalc
    typecheck
    changevar VAR_OP_CLEARMASK, VAR_06, 0x1
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    printattackmessage
    waitmessage
    if IF_MASK, VAR_10, 0x1FD849, _025C
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    checknostatus BATTLER_DEFENDER, _01B4
    changevar2 VAR_OP_SET, VAR_43, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_43, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_DEFENDER, VAR_47, 0x2B, _00D0
    changevar2 VAR_OP_SET, VAR_68, VAR_DAMAGE
    goto _00F4
_00D0:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_68
    changevar VAR_OP_MUL, VAR_68, 0xFFFFFFFF
_00F4:
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_DAMAGE
    changevar2 VAR_OP_SET, VAR_65, VAR_DAMAGE
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    cmd_D0_checkhpsomething BATTLER_xFF
    gotosubscript 2
    gotosubscript 16
    gotosubscript 21
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _028C
    checkifcurrentmovehits _016C
    gotosubscript2 43
_016C:
    itemeffectcheckonhit _017C
    gotosubscript2 43
_017C:
    changevar VAR_OP_SETMASK, VAR_06, 0x2000
    checkwhenitemmakesmovehit _019C
    gotosubscript2 43
_019C:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x2000
    goto _026C
_01B4:
    changevar2 VAR_OP_SET, VAR_43, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_43, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_DEFENDER, VAR_90, 0x2B, _0204
    changevar2 VAR_OP_SET, VAR_68, VAR_DAMAGE
    goto _023C
_0204:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x35, 0x1000000
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x5A, VAR_68
    changevar VAR_OP_MUL, VAR_68, 0xFFFFFFFF
_023C:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    gotosubscript 90
    goto _026C
_025C:
    wait 0xA
    gotosubscript 7
_026C:
    gotosubscript 280
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TEMP, VAR_CURRENT_MOVE
    goto _0008
_028C:
    gotosubscript 83
    checkifcurrentmovehits _02A4
    gotosubscript2 43
_02A4:
    itemeffectcheckonhit _02B4
    gotosubscript2 43
_02B4:
    changevar VAR_OP_SETMASK, VAR_06, 0x2000
    checkwhenitemmakesmovehit _02D4
    gotosubscript2 43
_02D4:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x2000
    gotosubscript 280
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TEMP, VAR_CURRENT_MOVE
_02FC:
    endscript

.close
