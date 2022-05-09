.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_104", 0

sub_seq_rev_104:
    gotosubscript 57
    setstatus2effect3 BATTLER_PLAYER, 0x2B
    waitmessage
    changevar VAR_OP_SET, VAR_39, 0x0
_0028:
    orderbattlersbyspeed 0x14
    weatherdamagecalc BATTLER_xFF
    if IF_EQUAL, VAR_43, 0x1, _018C
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _016C
    if IF_GREATER, VAR_HP_TEMP, 0x0, _0134
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _016C
    if IF_MASK, VAR_FIELD_EFFECT, 0x30, _00B8
    printmessage 0x11D, 0x15, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _00FC
_00B8:
    if IF_EQUAL, VAR_43, 0x2, _00E8
    printmessage 0x442, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    goto _00FC
_00E8:
    printmessage 0x448, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
_00FC:
    waitmessage
    wait 0x14
    gotosubscript 2
    if IF_NOTMASK, VAR_06, 0xF000000, _016C
    gotosubscript 6
    goto _016C
_0134:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x27B, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_016C:
    changevar VAR_OP_ADD, VAR_39, 0x1
    exitloopatvalue 0x27, _0028
    endscript
_018C:
    gotosubscript 190
    goto _016C

.close
