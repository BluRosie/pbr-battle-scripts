.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_007", 0

be_seq_rev_007:
    moldbreakerabilitycheck 0x0, BATTLER_ALL, ABILITY_DAMP, _009C
    if IF_MASK, VAR_06, 0xF0000000, _0090
    changevar VAR_OP_SET, VAR_09, 0x10000000
    changevar2 VAR_OP_LSH, VAR_09, VAR_ATTACKER
    changevar2 VAR_OP_SETMASK, VAR_06, VAR_09
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x2F, 0x0
    changevar VAR_OP_SET, VAR_HP_TEMP, 0x7FFF
    healthbarupdate BATTLER_ATTACKER
    waitmessage
    gotosubscript 76
_0090:
    critcalc
    damagecalc
    endscript
_009C:
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x274, 0x34, 0x8, 0x8, 0x1, 0x1, "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_06, 0x2
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
