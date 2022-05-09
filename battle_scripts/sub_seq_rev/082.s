.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_082", 0

sub_seq_rev_082:
    printmessage 0x184, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x2000000
    endscript

.close
