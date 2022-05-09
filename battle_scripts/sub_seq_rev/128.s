.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_128", 0

sub_seq_rev_128:
    checknostatus BATTLER_DEFENDER, _0080
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_SPATK, 0xC, _0044
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x7, _0074
    goto _0080
_0044:
    changevar VAR_OP_SET, VAR_34, 0x12
    gotosubscript 12
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x7, _007C
_0074:
    gotosubscript 37
_007C:
    endscript
_0080:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
