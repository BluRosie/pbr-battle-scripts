.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_264", 0

sub_seq_rev_264:
    if IF_MASK, VAR_06, 0x8800, _041C
    if IF_MASK, VAR_10, 0x20, _041C
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_NORMALIZE, _0054
    changevar VAR_OP_SET, VAR_09, 0x0
    goto _0088
_0054:
    if IF_EQUAL, VAR_MOVE_TYPE, 0x0, _0080
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TYPE, VAR_09
    goto _0088
_0080:
    getmoveparameter 0x3
_0088:
    getitemeffect BATTLER_DEFENDER, 0x2B
    if IF_EQUAL, VAR_43, 0x22, _0204
    if IF_NOTMASK, VAR_10, 0x2, _041C
    if IF_EQUAL, VAR_43, 0x12, _0220
    if IF_EQUAL, VAR_43, 0x13, _023C
    if IF_EQUAL, VAR_43, 0x14, _0258
    if IF_EQUAL, VAR_43, 0x15, _0274
    if IF_EQUAL, VAR_43, 0x16, _0290
    if IF_EQUAL, VAR_43, 0x17, _02AC
    if IF_EQUAL, VAR_43, 0x18, _02C8
    if IF_EQUAL, VAR_43, 0x19, _02E4
    if IF_EQUAL, VAR_43, 0x1A, _0300
    if IF_EQUAL, VAR_43, 0x1B, _031C
    if IF_EQUAL, VAR_43, 0x1C, _0338
    if IF_EQUAL, VAR_43, 0x1D, _0354
    if IF_EQUAL, VAR_43, 0x1E, _0370
    if IF_EQUAL, VAR_43, 0x1F, _038C
    if IF_EQUAL, VAR_43, 0x20, _03A8
    if IF_EQUAL, VAR_43, 0x21, _03C4
    goto _041C
_0204:
    if IF_EQUAL, VAR_09, 0x0, _03D8
    goto _041C
_0220:
    if IF_EQUAL, VAR_09, 0xA, _03D8
    goto _041C
_023C:
    if IF_EQUAL, VAR_09, 0xB, _03D8
    goto _041C
_0258:
    if IF_EQUAL, VAR_09, 0xD, _03D8
    goto _041C
_0274:
    if IF_EQUAL, VAR_09, 0xC, _03D8
    goto _041C
_0290:
    if IF_EQUAL, VAR_09, 0xF, _03D8
    goto _041C
_02AC:
    if IF_EQUAL, VAR_09, 0x1, _03D8
    goto _041C
_02C8:
    if IF_EQUAL, VAR_09, 0x3, _03D8
    goto _041C
_02E4:
    if IF_EQUAL, VAR_09, 0x4, _03D8
    goto _041C
_0300:
    if IF_EQUAL, VAR_09, 0x2, _03D8
    goto _041C
_031C:
    if IF_EQUAL, VAR_09, 0xE, _03D8
    goto _041C
_0338:
    if IF_EQUAL, VAR_09, 0x6, _03D8
    goto _041C
_0354:
    if IF_EQUAL, VAR_09, 0x5, _03D8
    goto _041C
_0370:
    if IF_EQUAL, VAR_09, 0x7, _03D8
    goto _041C
_038C:
    if IF_EQUAL, VAR_09, 0x10, _03D8
    goto _041C
_03A8:
    if IF_EQUAL, VAR_09, 0x11, _03D8
    goto _041C
_03C4:
    if IF_NOTEQUAL, VAR_09, 0x8, _041C
_03D8:
    setstatus2effect BATTLER_DEFENDER, 0xA
    waitmessage
    damagediv 32, 2
    printmessage 0x46B, 0x18, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    removeitem BATTLER_DEFENDER
_041C:
    endscript

.close
