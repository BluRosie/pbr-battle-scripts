.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_144", 0

sub_seq_rev_144:
    printmessage 0x268, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    clearsomeflag BATTLER_ATTACKER
    endscript

.close
