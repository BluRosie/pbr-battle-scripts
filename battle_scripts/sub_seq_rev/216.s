.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_216", 0

sub_seq_rev_216:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x37, 0x0
    endscript

.close
