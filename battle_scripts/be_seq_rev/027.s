.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_027", 0

be_seq_rev_027:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0xC00, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000035
_0028:
    critcalc
    damagecalc
    endscript

.close
