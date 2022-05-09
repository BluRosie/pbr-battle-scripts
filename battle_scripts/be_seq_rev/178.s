.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_178", 0

be_seq_rev_178:
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MULTITYPE, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x9000006F
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
