.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_228", 0

sub_seq_rev_228:
    printmessage2 0x356, 0x1B, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    throwpokeball BATTLER_PLAYER, 0x2
    waitmessage
    setstatus2effect BATTLER_OPPONENT, 0x1D
    waitmessage
    if IF_EQUAL, VAR_43, 0x0, _006C
    printmessage2 0x357, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _007C
_006C:
    printmessage2 0x358, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_007C:
    waitmessage
    wait 0x14
    endscript

.close
