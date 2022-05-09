.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_220", 0

sub_seq_rev_220:
    if IF_EQUAL, VAR_FLING_SUBSCRIPT, 0x0, _0050
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0050
    checknostatus BATTLER_DEFENDER, _0050
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_FLING_TEMP
    gotosubscript2 51
_0050:
    endscript

.close
