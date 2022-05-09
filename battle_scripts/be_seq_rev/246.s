.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_246", 0

be_seq_rev_246:
    trylastresort _0014
    critcalc
    damagecalc
    endscript
_0014:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
