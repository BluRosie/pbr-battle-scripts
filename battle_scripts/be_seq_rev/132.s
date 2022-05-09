.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_132", 0

be_seq_rev_132:
    changehprecoverybasedonweather
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_60, 0x100
    endscript

.close
