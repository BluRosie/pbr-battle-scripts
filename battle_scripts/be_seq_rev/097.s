.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_097", 0

be_seq_rev_097:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x7, _0038
    gotosubscript 20
    trysleeptalk _0038
    gotosubscript 76
    jumptoeffectscript 0
_0038:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
