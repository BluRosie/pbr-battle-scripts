.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_198", 0

be_seq_rev_198:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_RECKLESS, _0024
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xC
_0024:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000026
    critcalc
    damagecalc
    endscript

.close
