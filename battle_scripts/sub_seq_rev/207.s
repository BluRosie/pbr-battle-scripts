.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_207", 0

sub_seq_rev_207:
    gotosubscript 198
    printmessage 0x252, 0x30, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_06, 0x4001
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_BATTLER_SOMETHING
    changevar VAR_OP_SET, VAR_05, 0x5
    gotosubscript 37
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4001
    endscript

.close
