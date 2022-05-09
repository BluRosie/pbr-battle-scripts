.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_270", 0

sub_seq_rev_270:
    wait 0xA
    playse BATTLER_ATTACKER, 0x5EC
    printmessage 0x35A, 0x33, 0x1, 0x1, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    recoverstatus BATTLER_ATTACKER
    printmessage 0x10F, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
