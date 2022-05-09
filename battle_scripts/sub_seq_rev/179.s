.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_179", 0

sub_seq_rev_179:
    printattackmessage
    waitmessage
    wait 0xA
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_73, 0x0, _0060
    printmessage 0x290, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x49, 0x1
    endscript
_0060:
    cmd_DB BATTLER_DEFENDER
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
