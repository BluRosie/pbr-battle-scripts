.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_145", 0

sub_seq_rev_145:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xD8, _0060
    gotosubscript 76
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
    printmessage 0x1EB, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x14
    endscript
_0060:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
