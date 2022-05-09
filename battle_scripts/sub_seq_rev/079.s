.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_079", 0

sub_seq_rev_079:
    if IF_MASK, VAR_10, 0x10001, _0088
    checknostatus BATTLER_DEFENDER, _0088
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x3B, 0x18
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x10
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x4A, VAR_ATTACKER
    gotosubscript 76
    printmessage 0x17A, 0x9, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0088:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
