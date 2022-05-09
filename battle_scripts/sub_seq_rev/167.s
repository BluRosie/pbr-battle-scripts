.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_167", 0

sub_seq_rev_167:
    if IF_MASK, VAR_10, 0x10001, _0090
    checknostatus BATTLER_DEFENDER, _0090
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x36, _0090
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0090
    gotosubscript 76
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x1A, 0xF
    printmessage 0x3FD, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0090:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
