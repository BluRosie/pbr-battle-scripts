.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_145", 0

be_seq_rev_145:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _007C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x62, _0060
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x40000010
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_0060:
    gotosubscript 292
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0084
_007C:
    critcalc
    damagecalc
_0084:
    gotosubscript 259
    endscript

.close
