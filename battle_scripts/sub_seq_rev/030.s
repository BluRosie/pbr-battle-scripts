.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_030", 0

sub_seq_rev_030:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x34, 0x20
    printmessage 0x75, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x14
    endscript

.close
