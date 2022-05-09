.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_099", 0

sub_seq_rev_099:
    abilitycheck 0x0, BATTLER_REPLACE, ABILITY_MAGIC_GUARD, _01A8
    if IF_MASK, VAR_FIELD_EFFECT, 0x7000, _0098
    checkitemeffect 0x0, BATTLER_REPLACE, 0x69, _0098
    abilitycheck 0x0, BATTLER_REPLACE, ABILITY_LEVITATE, _0158
    ifmonstat IF_EQUAL, BATTLER_REPLACE, MON_DATA_TYPE_1, 0x2, _0158
    ifmonstat IF_EQUAL, BATTLER_REPLACE, MON_DATA_TYPE_2, 0x2, _0158
    ifmonstat IF_MASK, BATTLER_REPLACE, MON_DATA_MOVE_STATE, 0x8000000, _0158
_0098:
    checktoxicspikes _00B8
    monflicker 0x20
    startencounter
    trainerslidein BATTLER_DEFENDER, 0x12
_00B8:
    if IF_EQUAL, VAR_09, 0x1, _00F0
    printmessage 0x429, 0x1, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    goto _0108
_00F0:
    gotosubscript 22
    goto _0108
    gotosubscript 47
_0108:
    checkspikes BATTLER_REPLACE, _0158
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_SWITCHED_BATTLER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x1AD, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_0158:
    checkstealthrock BATTLER_REPLACE, _01A8
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_SWITCHED_BATTLER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x437, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_01A8:
    endscript

.close
