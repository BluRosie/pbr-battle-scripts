.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_218", 0

sub_seq_rev_218:
    if IF_MASK, VAR_10, 0x10001, _00A0
    checknostatus BATTLER_DEFENDER, _00A0
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _00A0
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_81, 0x0, _00A0
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x4000000
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x51, 0x5
    printmessage 0x46F, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_00A0:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
