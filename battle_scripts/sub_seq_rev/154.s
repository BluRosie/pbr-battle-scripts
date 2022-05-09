.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_154", 0

sub_seq_rev_154:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv 32, 2
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    printattackmessage
    waitmessage
    gotosubscript 111
    if IF_MASK, VAR_10, 0x80000000, _0064
    setoneturnflag BATTLER_ATTACKER, 0x6, 0x1
_0064:
    endscript

.close
