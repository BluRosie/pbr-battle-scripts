.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_057", 0

sub_seq_rev_057:
    printpreparedmessage
    waitmessage
    wait 0x14
    endscript

.close
