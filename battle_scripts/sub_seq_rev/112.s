.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_112", 0

sub_seq_rev_112:
    if IF_MASK, VAR_10, 0x1FD849, _003C
    printattackmessage
    waitmessage
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _0040
    gotosubscript 111
_003C:
    endscript
_0040:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    cmd_DB BATTLER_xFF
    printmessage 0x41E, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
