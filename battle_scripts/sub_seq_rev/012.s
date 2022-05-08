.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_012", 0

sub_seq_rev_012:
    statbuffchange _00A8, _00F0, _00F4
    if IF_NOTEQUAL, VAR_05, 0x1, _002C
    printattackmessage
    waitmessage
_002C:
    if IF_NOTEQUAL, VAR_05, 0x1, _004C
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_004C:
    if IF_MASK, VAR_60, 0x2, _0094
    setstatus2effect3 BATTLER_ADDL_EFFECT, 0x2B
    waitmessage
    if IF_NOTMASK, VAR_60, 0x80, _0094
    changevar VAR_OP_SETMASK, VAR_60, 0x2
_0094:
    printpreparedmessage
    waitmessage
    wait 0x14
    endscript
_00A8:
    if IF_NOTEQUAL, VAR_05, 0x1, _00C4
    printattackmessage
    waitmessage
_00C4:
    if IF_MASK, VAR_06, 0x200000, _00F0
    wait 0x14
    printpreparedmessage
    waitmessage
    wait 0x14
_00F0:
    endscript
_00F4:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
