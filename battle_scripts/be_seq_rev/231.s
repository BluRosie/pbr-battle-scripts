.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_231", 0

be_seq_rev_231:
    getmoveparameter 0x2
    changevar2 VAR_OP_SET, VAR_ABILITY_TEMP, VAR_09
    if IF_EQUAL, VAR_ASSURANCE_DAMAGE_AGAINST_DEFENDER, 0x0, _004C
    changevar2 VAR_OP_SET, VAR_ABILITY_TEMP, VAR_09
    changevar VAR_OP_MUL, VAR_ABILITY_TEMP, 0x2
_004C:
    critcalc
    damagecalc
    endscript

.close
