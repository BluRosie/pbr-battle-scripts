.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_148", 0

be_seq_rev_148:
    tryfuturesight _002C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    changevar VAR_OP_SETMASK, VAR_06, 0x8841C
    endscript
_002C:
    printattackmessage
    waitmessage
    wait 0x14
    gotosubscript 75
    endscript

.close
