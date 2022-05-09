.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_173", 0

sub_seq_rev_173:
    checknostatus BATTLER_DEFENDER, _007C
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _007C
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x2000000
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x50, 0x5
    cmd_DB BATTLER_DEFENDER
    printmessage 0x41B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_007C:
    printattackmessage
    waitmessage
    wait 0xA
    cmd_DB BATTLER_DEFENDER
    printmessage 0x4D3, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
