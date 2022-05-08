.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_188", 0

sub_seq_rev_188:
    printmessage 0x281, 0x28, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1B, VAR_22
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1C, VAR_22
    endscript

.close
