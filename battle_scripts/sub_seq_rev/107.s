.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_107", 0

sub_seq_rev_107:
    printmessage 0xA5, 0x9, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    setstatus2effect BATTLER_ATTACKER, 0x7
    waitmessage
    endscript

.close
