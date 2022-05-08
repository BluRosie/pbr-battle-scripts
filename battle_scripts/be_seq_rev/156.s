.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_156", 0

be_seq_rev_156:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x40000000
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x40000010
    endscript

.close
