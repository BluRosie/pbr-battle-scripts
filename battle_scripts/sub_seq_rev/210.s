.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_210", 0

sub_seq_rev_210:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    wait 0xA
    setstatus2effect BATTLER_xFF, 0xC
    waitmessage
    printmessage 0x2F7, 0x2D, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SET, VAR_43, 0x12
    changevar2 VAR_OP_ADD, VAR_43, VAR_22
    changevartomonvalue VAR_OP_ADD, BATTLER_xFF, 0x64, 0x2
    ifmonstat IF_LESSTHAN, BATTLER_xFF, MON_DATA_VARIABLE, 0xC, _00AC
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x64, 0xC
_00AC:
    gotosubscript 290
    endscript

.close
