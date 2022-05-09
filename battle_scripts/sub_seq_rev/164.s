.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_164", 0

sub_seq_rev_164:
    changevar VAR_OP_SET, VAR_09, 0x5000
    changevar2 VAR_OP_SETMASK, VAR_SIDE_EFFECT_PLAYER, VAR_09
    printmessage 0x4D9, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
