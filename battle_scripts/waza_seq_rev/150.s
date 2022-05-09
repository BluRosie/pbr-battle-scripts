.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/waza_seq_rev/waza_seq_rev_150", 0

waza_seq_rev_150:
    incrementgamestat BATTLER_ATTACKER, 0x0, 0x31
    jumptocurmoveeffectscript

.close
