.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_021", 0

sub_seq_rev_021:
    wait 0xA
    if IF_NOTMASK, VAR_10, 0x2000, _0030
    printmessage 0x31B, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0180
_0030:
    if IF_NOTMASK, VAR_10, 0x100, _0098
    setstatus2effect BATTLER_DEFENDER, 0xA
    waitmessage
    printmessage 0x390, 0xF, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    checkitemeffect 0x1, BATTLER_DEFENDER, 0x66, _0084
    removeitem BATTLER_DEFENDER
_0084:
    waitmessage
    wait 0x14
    goto _0110
_0098:
    if IF_NOTMASK, VAR_10, 0x80, _00E8
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x1, _00E8
    printmessage 0x1BD, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    goto _0110
_00E8:
    if IF_NOTMASK, VAR_10, 0x20, _0110
    printmessage 0x307, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0180
_0110:
    if IF_MASK, VAR_06, 0x800, _018C
    if IF_AND, VAR_10, 0x6, _018C
    if IF_NOTMASK, VAR_10, 0x2, _0160
    printmessage 0x30C, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0180
_0160:
    if IF_NOTMASK, VAR_10, 0x4, _018C
    printmessage 0x30B, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
_0180:
    waitmessage
    wait 0x14
_018C:
    endscript

.close
