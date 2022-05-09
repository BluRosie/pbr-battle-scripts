.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_040", 0

be_seq_rev_040:
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_DAMAGE, 0xFFFFFFFF
    damagediv 14, 2
    endscript

.close
