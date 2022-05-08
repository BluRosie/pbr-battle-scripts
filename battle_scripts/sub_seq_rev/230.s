.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_230", 0

sub_seq_rev_230:
    playse BATTLER_ATTACKER, 0x6FF
    printmessage2 0x310, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    incrementgamestat BATTLER_ATTACKER, 0x1, 0x48
    endscript

.close
