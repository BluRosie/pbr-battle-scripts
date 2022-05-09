.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_272", 0

sub_seq_rev_272:
    setstatus2effect BATTLER_PLAYER, 0x14
    waitmessage
    printmessage 0x32A, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x80
    endscript

.close
