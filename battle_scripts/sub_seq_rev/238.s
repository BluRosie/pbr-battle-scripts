.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_238", 0

sub_seq_rev_238:
    printmessage 0x3EC, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
