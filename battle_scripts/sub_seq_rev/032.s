.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_032", 0

sub_seq_rev_032:
    printmessage 0x82, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    setstatus2effect BATTLER_ATTACKER, 0x5
    waitmessage
    clearsomeflag BATTLER_ATTACKER
    endscript

.close
