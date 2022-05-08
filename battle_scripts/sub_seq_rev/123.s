.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_123", 0

sub_seq_rev_123:
    printattackmessage
    waitmessage
    wait 0xA
    printpreparedmessage
    waitmessage
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    endscript

.close
