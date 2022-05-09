.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_213", 0

be_seq_rev_213:
    trycamouflage _0044
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x10000000
    preparemessage 0xB2, 0xD, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_0044:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
