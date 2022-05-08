.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_212", 0

sub_seq_rev_212:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x37D, 0x2E, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0xF0000
    gotosubscript 290
    endscript

.close
