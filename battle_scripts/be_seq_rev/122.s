.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_122", 0

be_seq_rev_122:
    trypresent _0014
    critcalc
    damagecalc
    endscript
_0014:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_06, 0x8000
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    endscript

.close
