.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_221", 0

be_seq_rev_221:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x30, VAR_09
    changevar VAR_OP_DIV, VAR_09, 0x2
    ifmonstat2 IF_GREATER, BATTLER_DEFENDER, VAR_47, 0x9, _0054
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    goto _0064
_0054:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
_0064:
    critcalc
    damagecalc
    endscript

.close
