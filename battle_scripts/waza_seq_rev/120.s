.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "waza_seq_rev\waza_seq_rev_120", 0

waza_seq_rev_120:
    incrementgamestat BATTLER_ATTACKER, 0x0, 0x33
    jumptocurmoveeffectscript

.close
