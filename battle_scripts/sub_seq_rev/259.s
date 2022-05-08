.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_259", 0

sub_seq_rev_259:
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x1000
    changevar VAR_OP_SETMASK, VAR_06, 0x200
    endscript

.close
