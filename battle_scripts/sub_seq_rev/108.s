.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_108", 0

sub_seq_rev_108:
    gotosubscript 107
    printmessage 0xAC, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    clearsomeflag BATTLER_ATTACKER
    endscript

.close
