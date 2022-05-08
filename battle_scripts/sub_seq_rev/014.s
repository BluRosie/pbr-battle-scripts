.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_014", 0

sub_seq_rev_014:
    checkmovefinished BATTLER_ADDL_EFFECT, _0068
    checknostatus BATTLER_ADDL_EFFECT, _00B8
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INNER_FOCUS, _006C
    if IF_NOTEQUAL, VAR_05, 0x2, _0054
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0068
_0054:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x35, 0x8
_0068:
    endscript
_006C:
    if IF_EQUAL, VAR_CURRENT_MOVE, 0xFC, _0094
    if IF_NOTEQUAL, VAR_05, 0x1, _00B4
_0094:
    printmessage 0x2E1, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
_00B4:
    endscript
_00B8:
    if IF_NOTEQUAL, VAR_05, 0x1, _00DC
    changevar VAR_OP_SETMASK, VAR_10, 0x40
_00DC:
    endscript

.close
