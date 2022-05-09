.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_102", 0

sub_seq_rev_102:
    printmessage 0x1B7, 0x11, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    ifmonstat IF_MASK, BATTLER_xFF, MON_DATA_MOVE_STATE, 0x20, _0040
    gotosubscript 2
_0040:
    endscript

.close
