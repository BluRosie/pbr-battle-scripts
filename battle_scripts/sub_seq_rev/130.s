.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_130", 0

sub_seq_rev_130:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0054
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x34, 0x40
    printmessage 0x88, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_DEFENDER, 0x0
    wait 0x14
_0054:
    endscript

.close
