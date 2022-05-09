.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_194", 0

be_seq_rev_194:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_MOVE_STATE, 0x4000, _0050
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x4000
    preparemessage 0x235, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_0050:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
