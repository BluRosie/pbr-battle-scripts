.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_083", 0

be_seq_rev_083:
    printattackmessage
    waitmessage
    wait 0x14
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    metronome
    jumptoeffectscript 0

.close
