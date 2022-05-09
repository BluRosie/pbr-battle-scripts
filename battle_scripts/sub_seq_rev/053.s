.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_053", 0

sub_seq_rev_053:
    gotosubscript 76
    printpreparedmessage
    waitmessage
    wait 0x14
    endscript

.close
