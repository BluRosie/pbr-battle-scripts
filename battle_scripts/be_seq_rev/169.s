.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_169", 0

be_seq_rev_169:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xD8, _0028
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0028:
    critcalc
    damagecalc
    endscript

.close
