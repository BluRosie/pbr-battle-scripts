.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/waza_seq_rev/waza_seq_rev_128", 0

waza_seq_rev_128:
    preparemessage 0xFF, 0x9, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN"
    jumptocurmoveeffectscript

.close
