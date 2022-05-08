.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_085", 0

sub_seq_rev_085:
    trythief _00CC, _00A0
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    printmessage 0x191, 0x21, 0x1, 0x2, 0x2, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x37, 0x0
    goto _00CC
_00A0:
    cmd_DB BATTLER_DEFENDER
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_00CC:
    endscript

.close
