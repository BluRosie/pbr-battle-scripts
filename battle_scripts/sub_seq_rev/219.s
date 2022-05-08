.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_219", 0

sub_seq_rev_219:
    trypluck _0064, _0060
    printmessage 0x475, 0xF, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    removeitem BATTLER_DEFENDER
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    if IF_EQUAL, VAR_43, 0x0, _0060
    gotosubscript2 43
_0060:
    endscript
_0064:
    cmd_DB BATTLER_DEFENDER
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
