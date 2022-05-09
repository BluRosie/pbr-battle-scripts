.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_017", 0

sub_seq_rev_017:
    if IF_MASK, VAR_06, 0x10000, _0030
    printmessage 0x2E, 0x6, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_0030:
    endscript

.close
