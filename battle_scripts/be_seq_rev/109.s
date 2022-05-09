.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_109", 0

be_seq_rev_109:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_TYPE_1, 0x7, _0044
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_TYPE_2, 0x7, _0044
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x40000058
    endscript
_0044:
    if2 IF_NOTEQUAL, VAR_ATTACKER, 0x10, _0060
    cmd_D4 BATTLER_ATTACKER
_0060:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000059
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    endscript

.close
