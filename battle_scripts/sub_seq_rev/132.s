.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_132", 0

sub_seq_rev_132:
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_TAUNT_COUNTER, 0x0, _0074
    if IF_MASK, VAR_10, 0x10001, _0074
    gotosubscript 76
    random 2, 3
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x40, VAR_09
    printmessage 0x1F4, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0074:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
