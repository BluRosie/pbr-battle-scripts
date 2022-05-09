.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_111", 0

sub_seq_rev_111:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_09
    ifmonstat2 IF_EQUAL, BATTLER_xFF, VAR_47, 0x9, _0094
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    if IF_NOTMASK, VAR_60, 0x100, _006C
    setstatus2effect BATTLER_xFF, 0xE
    waitmessage
_006C:
    gotosubscript 2
    printmessage 0xB8, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript
_0094:
    wait 0x14
    cmd_DB BATTLER_xFF
    printmessage 0xBB, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
