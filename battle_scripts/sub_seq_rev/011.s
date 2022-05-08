.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_011", 0

sub_seq_rev_011:
    printmessage 0x359, 0x1C, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    initcapture 0x0
    capturemon
    endscript

.close
