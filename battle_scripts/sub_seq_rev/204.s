.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_204", 0

sub_seq_rev_204:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x386, 0x2C, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    gotosubscript 290
    endscript

.close
