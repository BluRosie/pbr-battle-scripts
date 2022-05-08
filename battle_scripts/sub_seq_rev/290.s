.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_290", 0

sub_seq_rev_290:
    if IF_MASK, VAR_47, 0x2, _001C
    removeitem BATTLER_xFF
_001C:
    changevar VAR_OP_CLEARMASK, VAR_47, 0x2
    endscript

.close
