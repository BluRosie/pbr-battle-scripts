.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_155", 0

sub_seq_rev_155:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0054
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x34, 0x7
    printmessage 0x12E, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_DEFENDER, 0x0
    wait 0x14
_0054:
    endscript

.close
