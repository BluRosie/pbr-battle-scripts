.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_019", 0

sub_seq_rev_019:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_SOUNDPROOF, _0040
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0xF00, _0040
    printmessage 0x131, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0050
_0040:
    printmessage 0x12E, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
_0050:
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x14
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x34, 0x7
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x8000000
    endscript

.close
