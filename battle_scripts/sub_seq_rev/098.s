.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_098", 0

sub_seq_rev_098:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _0088
    setstatus2effect BATTLER_xFF, 0x1E
    waitmessage
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_HP_TEMP
    damagediv 32, 4
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    printmessage 0x1A8, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    jumptosubseq 2
_0088:
    endscript

.close
