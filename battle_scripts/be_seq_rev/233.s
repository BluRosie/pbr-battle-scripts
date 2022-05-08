.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "be_seq_rev\be_seq_rev_233", 0

be_seq_rev_233:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _0074
    tryfling _0074
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0xA0000088
    critcalc
    damagecalc
    printattackmessage
    waitmessage
    wait 0x14
    printmessage 0x478, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    removeitem BATTLER_ATTACKER
    endscript
_0074:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
