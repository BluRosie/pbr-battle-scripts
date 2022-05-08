.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_029", 0

sub_seq_rev_029:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x34, 0x20
    printmessage 0x72, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x14
    endscript

.close
