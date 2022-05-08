.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_182", 0

sub_seq_rev_182:
    printattackmessage
    waitmessage
    wait 0xA
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_SPEED, 0xC, _0084
    setstatus2effect BATTLER_DEFENDER, 0xC
    waitmessage
    changevartomonvalue VAR_OP_ADD, BATTLER_DEFENDER, 0x15, 0x1
    changevar VAR_OP_SET, VAR_22, 0x3
    printmessage 0x26E, 0x27, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0084:
    printmessage 0x27E, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
