.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_274", 0

sub_seq_rev_274:
    setstatus2effect BATTLER_PLAYER, 0x12
    waitmessage
    printmessage 0x32D, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x8000
    endscript

.close
