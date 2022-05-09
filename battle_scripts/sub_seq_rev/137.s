.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_137", 0

sub_seq_rev_137:
    setstatus2effect BATTLER_xFF, 0x28
    waitmessage
    printmessage 0x21B, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_HP_TEMP
    damagediv 32, 16
    checkitemeffect 0x1, BATTLER_xFF, 0x7B, _009C
    getitempower BATTLER_xFF, VAR_09
    changevar VAR_OP_ADD, VAR_09, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_09
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_009C:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    endscript

.close
