.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_041", 0

sub_seq_rev_041:
    trainerslidein BATTLER_OPPONENT, 0x1
    waitmessage
    trainermessage2 BATTLER_OPPONENT
    waitmessage
    wait 0x28
    preparetrainerslide BATTLER_OPPONENT
    waitmessage
    endscript

.close
