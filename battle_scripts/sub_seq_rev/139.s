.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_139", 0

sub_seq_rev_139:
    printattackmessage
    waitmessage
    wait 0xA
    printmessage 0x23E, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    trymagiccoat2
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    endscript

.close
