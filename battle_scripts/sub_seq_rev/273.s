.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_273", 0

sub_seq_rev_273:
    setstatus2effect BATTLER_PLAYER, 0x15
    waitmessage
    printmessage 0x324, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x8
    endscript

.close
