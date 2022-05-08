.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_126", 0

sub_seq_rev_126:
    if IF_NOTEQUAL, VAR_05, 0x1, _0028
    printattackmessage
    waitmessage
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_0028:
    printpreparedmessage
    waitmessage
    wait 0x14
    endscript

.close
