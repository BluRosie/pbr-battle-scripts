.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_038", 0

sub_seq_rev_038:
    printmessage 0x96, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    setstatus2effect BATTLER_ATTACKER, 0x6
    waitmessage
    endscript

.close
