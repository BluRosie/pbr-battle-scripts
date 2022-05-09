.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_095", 0

sub_seq_rev_095:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x3B, 0x100
    changevar VAR_OP_SET, VAR_34, 0x15
    jumptosubseq 12

.close
