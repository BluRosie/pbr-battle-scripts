.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_169", 0

sub_seq_rev_169:
    printmessage 0x406, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    checkitemeffect 0x1, BATTLER_xFF, 0x7B, _0080
    getitempower BATTLER_xFF, VAR_09
    changevar VAR_OP_ADD, VAR_09, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_09
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_0080:
    setstatus2effect BATTLER_xFF, 0xE
    waitmessage
    gotosubscript 2
    endscript

.close
