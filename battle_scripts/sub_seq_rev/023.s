.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_023", 0

sub_seq_rev_023:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _00E0
    abilitycheck 0x1, BATTLER_xFF, ABILITY_POISON_HEAL, _009C
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_HP_TEMP
    ifmonstat2 IF_EQUAL, BATTLER_xFF, VAR_47, 0x20, _00E0
    damagediv 32, 8
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x27B, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_009C:
    printmessage 0x49, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    setstatus2effect BATTLER_xFF, 0x2
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    jumptosubseq 2
_00E0:
    endscript

.close
