.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_116", 0

sub_seq_rev_116:
    printmessage 0x1CB, 0x1F, 0x1, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
