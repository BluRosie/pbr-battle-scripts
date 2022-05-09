.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_047", 0

be_seq_rev_047:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x100000, _002C
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS1, 0x40000046
    endscript
_002C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
