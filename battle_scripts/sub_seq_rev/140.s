.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_140", 0

sub_seq_rev_140:
    trybreakscreens _0040
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    gotosubscript 76
    printmessage 0x25E, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    goto _005C
_0040:
    if IF_MASK, VAR_10, 0x1FD849, _005C
    gotosubscript 76
_005C:
    endscript

.close
