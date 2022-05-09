.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_226", 0

be_seq_rev_226:
    checknostatus BATTLER_DEFENDER, _0018
    tryacupressure _0018
    endscript
_0018:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
