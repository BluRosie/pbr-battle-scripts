.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_026", 0

be_seq_rev_026:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _0040
    if IF_MASK, VAR_06, 0x200, _0040
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000003F
    endscript
_0040:
    changevar VAR_OP_SETMASK, VAR_06, 0x1
    endscript

.close
