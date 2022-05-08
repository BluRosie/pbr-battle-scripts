.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_035", 0

sub_seq_rev_035:
    gotosubscript 76
    setsomeflag BATTLER_ATTACKER
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x200
    changevar VAR_OP_SET, VAR_DAMAGE_BACKUP, 0x0
    endscript

.close
