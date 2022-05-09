.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_026", 0

sub_seq_rev_026:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _00A8
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_HP_TEMP
    damagediv 32, 8
    abilitycheck 0x1, BATTLER_xFF, ABILITY_HEATPROOF, _0054
    damagediv 32, 2
_0054:
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    printmessage 0x5F, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    setstatus2effect BATTLER_xFF, 0x3
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    jumptosubseq 2
_00A8:
    endscript

.close
