.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_121", 0

be_seq_rev_121:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2C, VAR_ABILITY_TEMP
    changevar VAR_OP_MUL, VAR_ABILITY_TEMP, 0xA
    changevar VAR_OP_DIV, VAR_ABILITY_TEMP, 0x19
    critcalc
    damagecalc
    endscript

.close
