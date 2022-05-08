.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_089", 0

sub_seq_rev_089:
    printattackmessage
    waitmessage
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000000, _00B8
    trysubstitute _0094
    setstatus2effect BATTLER_ATTACKER, 0x19
    waitmessage
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x1000000
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    gotosubscript 2
    printmessage 0x15C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0094:
    wait 0x14
    cmd_DB BATTLER_ATTACKER
    printmessage 0x333, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00D0
_00B8:
    wait 0x14
    printmessage 0x15F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_00D0:
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
