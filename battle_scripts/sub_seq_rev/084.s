.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_084", 0

sub_seq_rev_084:
    if IF_MASK, VAR_10, 0x10001, _004C
    tryspite _004C
    gotosubscript 76
    printmessage 0x18E, 0x23, 0x2, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_004C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
