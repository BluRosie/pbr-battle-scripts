.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_008", 0

be_seq_rev_008:
    checknostatus BATTLER_DEFENDER, _0040
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x7, _0040
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000003D
    critcalc
    damagecalc
    endscript
_0040:
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x3C, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
