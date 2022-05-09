.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_070", 0

sub_seq_rev_070:
    if IF_MASK, VAR_10, 0x10001, _0048
    trydisable _0048
    gotosubscript 76
    printmessage 0x16E, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0048:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
