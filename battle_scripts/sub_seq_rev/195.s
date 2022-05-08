.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_195", 0

sub_seq_rev_195:
    printmessage 0x455, 0x25, 0xFF, 0x15, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
