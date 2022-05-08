.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_006", 0

sub_seq_rev_006:
    incrementgamestat BATTLER_FAINTED, 0x1, 0x29
    incrementgamestat BATTLER_FAINTED, 0x0, 0x45
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    if IF_MASK, VAR_60, 0x1, _0060
_0060:
    endscript

.close
