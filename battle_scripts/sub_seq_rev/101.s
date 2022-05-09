.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_101", 0

sub_seq_rev_101:
    tryperishsong _00B8
    gotosubscript 76
    printmessage 0x336, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0xC3
    changevar VAR_OP_SET, VAR_ABILITY_TEMP2, 0x2B
    changevar VAR_OP_SET, VAR_39, 0x0
_0058:
    orderbattlersbyspeed 0x14
    moldbreakerabilitycheck 0x1, BATTLER_xFF, ABILITY_SOUNDPROOF, _0098
    printmessage 0x2B1, 0x25, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_0098:
    changevar VAR_OP_ADD, VAR_39, 0x1
    exitloopatvalue 0x27, _0058
    endscript
_00B8:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
