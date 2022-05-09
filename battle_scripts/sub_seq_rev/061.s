.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_061", 0

sub_seq_rev_061:
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MAGIC_GUARD, _00DC
    if IF_NOTMASK, VAR_06, 0x1000, _00DC
    printmessage 0x10C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_DAMAGE
    damagediv 32, 2
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x30, VAR_43
    changevar VAR_OP_MUL, VAR_43, 0xFFFFFFFF
    damagediv 43, 2
    if2 IF_LESSTHAN, VAR_43, 0x20, _00B4
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_43
_00B4:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
_00DC:
    endscript

.close
