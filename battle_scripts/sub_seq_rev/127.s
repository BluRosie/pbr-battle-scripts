.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_127", 0

sub_seq_rev_127:
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x80000000, _0068
    if IF_MASK, VAR_10, 0x10001, _0068
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, 0x80000000
    printmessage 0x1EE, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0068:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
