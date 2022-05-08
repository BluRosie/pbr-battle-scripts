.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_243", 0

sub_seq_rev_243:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x424, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x3B, 0x2000000
    endscript

.close
