.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_100", 0

sub_seq_rev_100:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, 0x20000000
    printmessage 0x1B0, 0x9, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
