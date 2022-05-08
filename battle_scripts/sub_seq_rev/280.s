.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_280", 0

sub_seq_rev_280:
    changevar2 VAR_OP_GET_RESULT, VAR_ATTACKER_TEMP2, VAR_ATTACKER
    changevar2 VAR_OP_GET_RESULT, VAR_DEFENDER_TEMP2, VAR_DEFENDER
    endscript

.close
