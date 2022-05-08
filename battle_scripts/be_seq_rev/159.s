.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_159", 0

be_seq_rev_159:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x70, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000000A
_0028:
    critcalc
    damagecalc
    endscript

.close
