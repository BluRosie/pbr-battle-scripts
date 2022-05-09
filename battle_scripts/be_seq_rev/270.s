.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_270", 0

be_seq_rev_270:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0024
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x2000008F
    endscript
_0024:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
