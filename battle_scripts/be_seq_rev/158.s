.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_158", 0

be_seq_rev_158:
    ifmonstat2 IF_NOTEQUAL, BATTLER_ATTACKER, VAR_88, 0x19, _0034
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000008
    critcalc
    damagecalc
    endscript
_0034:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
