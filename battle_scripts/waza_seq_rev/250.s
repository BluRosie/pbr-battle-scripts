.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "waza_seq_rev\waza_seq_rev_250", 0

waza_seq_rev_250:
    preparemessage 0xF2, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    jumptocurmoveeffectscript

.close