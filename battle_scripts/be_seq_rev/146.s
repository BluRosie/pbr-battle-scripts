.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_146", 0

be_seq_rev_146:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000008
    changevar VAR_OP_SETMASK, VAR_06, 0x4
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x40, _0058
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0058:
    critcalc
    damagecalc
    endscript

.close
