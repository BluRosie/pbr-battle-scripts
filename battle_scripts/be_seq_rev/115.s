.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_115", 0

be_seq_rev_115:
    if IF_MASK, VAR_FIELD_EFFECT, 0xC, _0094
    preparemessage 0x324, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, 0x80FF
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x4
    changevar VAR_OP_SET, VAR_WEATHER_TURNS, 0x5
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005D
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x6E, _0090
    getitempower BATTLER_ATTACKER, VAR_09
    changevar2 VAR_OP_ADD, VAR_WEATHER_TURNS, VAR_09
_0090:
    endscript
_0094:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
