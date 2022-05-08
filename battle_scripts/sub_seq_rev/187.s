.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_187", 0

sub_seq_rev_187:
    wait 0xA
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER2, 0x1A, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_xFF, 0x1A, VAR_09
    printmessage 0x2A7, 0x20, 0xFF, 0xF, 0xF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
