.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_117", 0

sub_seq_rev_117:
    printmessage 0x1D2, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
