.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_007", 0

sub_seq_rev_007:
    printattackmessage
    waitmessage
    wait 0x14
    if IF_NOTMASK, VAR_10, 0x20000, _0030
    printpreparedmessage
    goto _0294
_0030:
    if IF_NOTMASK, VAR_10, 0x10000, _004C
    goto _023C
_004C:
    if IF_NOTMASK, VAR_10, 0x8000, _00DC
    if IF_EQUAL, VAR_CURRENT_MOVE, 0xAD, _00B0
    if IF_EQUAL, VAR_CURRENT_MOVE, 0xAB, _00B0
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x176, _00B0
    if IF_NOTEQUAL, VAR_CURRENT_MOVE, 0x16B, _00C4
_00B0:
    if IF_MASK, VAR_10, 0x40, _014C
_00C4:
    printmessage 0xF, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0294
_00DC:
    if IF_NOTMASK, VAR_10, 0x800, _010C
    printmessage 0x15, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _0294
_010C:
    if IF_NOTMASK, VAR_10, 0x100000, _014C
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x189
    printmessage 0x40C, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0294
_014C:
    if IF_NOTMASK, VAR_10, 0x40, _0174
    printmessage 0x31C, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0294
_0174:
    if IF_NOTMASK, VAR_10, 0x40000, _01A4
    printmessage 0x12, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _0294
_01A4:
    if IF_NOTMASK, VAR_10, 0x8, _01E0
    incrementgamestat BATTLER_ATTACKER, 0x0, 0x44
    printmessage 0x1B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0294
_01E0:
    if IF_NOTMASK, VAR_10, 0x80000, _0210
    printmessage 0x271, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _0294
_0210:
    if IF_NOTMASK, VAR_10, 0x1000, _023C
    printmessage 0x156, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0294
_023C:
    getmoveparameter 0x7
    if IF_EQUAL, VAR_09, 0x4, _0284
    if IF_EQUAL, VAR_09, 0x8, _0284
    printmessage 0xC, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0294
_0284:
    printmessage 0x18, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_0294:
    waitmessage
    wait 0x14
    if IF_NOTMASK, VAR_06, 0x40000, _02BC
    gotosubscript 57
_02BC:
    clearsomeflag BATTLER_ATTACKER
    gotosubscript 61
    endscript

.close
