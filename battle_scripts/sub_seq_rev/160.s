.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_160", 0

sub_seq_rev_160:
    if IF_MASK, VAR_SIDE_EFFECT_PLAYER, 0x300, _004C
    gotosubscript 76
    printmessage 0x4CE, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_SIDE_EFFECT_PLAYER, 0x300
    endscript
_004C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
