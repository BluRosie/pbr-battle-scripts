.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_039", 0

sub_seq_rev_039:
    printmessage 0x96, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    setstatus2effect BATTLER_ATTACKER, 0x6
    waitmessage
    printmessage 0x31D, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    clearsomeflag BATTLER_ATTACKER
    cmd_D0_checkhpsomething BATTLER_ATTACKER
    gotosubscript 2
    gotosubscript 21
    endscript

.close
