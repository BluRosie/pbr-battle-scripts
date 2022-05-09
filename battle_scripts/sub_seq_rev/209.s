.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_209", 0

sub_seq_rev_209:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x255, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_SETMASK, BATTLER_xFF, 0x35, 0x100000
    gotosubscript 290
    endscript

.close
