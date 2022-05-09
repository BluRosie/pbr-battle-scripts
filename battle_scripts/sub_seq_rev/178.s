.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_178", 0

sub_seq_rev_178:
    printattackmessage
    waitmessage
    wait 0xA
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x30, VAR_09
    ifmonstat2 IF_EQUAL, BATTLER_DEFENDER, VAR_47, 0x9, _0088
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x27B, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0088:
    printmessage 0x27E, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
