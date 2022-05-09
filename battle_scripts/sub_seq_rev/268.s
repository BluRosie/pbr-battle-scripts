.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_268", 0

sub_seq_rev_268:
    wait 0xA
    playse BATTLER_ATTACKER, 0x5EC
    printmessage 0x35A, 0x33, 0x1, 0x1, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    recoverstatus BATTLER_ATTACKER
    if IF_EQUAL, VAR_22, 0x0, _00D4
    if IF_EQUAL, VAR_22, 0x1, _0104
    if IF_EQUAL, VAR_22, 0x2, _0120
    if IF_EQUAL, VAR_22, 0x3, _013C
    if IF_EQUAL, VAR_22, 0x4, _0158
    if IF_EQUAL, VAR_22, 0x5, _0174
    printmessage 0x380, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_00D4:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x7
    printmessage 0x37A, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _01A4
_0104:
    printmessage 0x36B, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0120:
    printmessage 0x374, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_013C:
    printmessage 0x371, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0158:
    printmessage 0x36E, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0174:
    printmessage 0x377, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0190:
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_01A4:
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x14
    endscript

.close
