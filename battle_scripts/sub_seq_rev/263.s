.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_263", 0

sub_seq_rev_263:
    changevar VAR_OP_SET, VAR_ATTACKER_TEMP, 0x0
_0010:
    if IF_NOTMASK, VAR_43, 0x1, _0060
    printmessage 0x461, 0x24, 0xE, 0xE, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
_0060:
    changevar VAR_OP_ADD, VAR_ATTACKER_TEMP, 0x1
    changevar VAR_OP_RSH, VAR_43, 0x1
    if IF_NOTEQUAL, VAR_43, 0x0, _0010
    endscript

.close
