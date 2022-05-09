.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_064", 0

sub_seq_rev_064:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x400000
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x57, VAR_TURNS
    endscript

.close
