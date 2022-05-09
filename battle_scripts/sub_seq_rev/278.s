.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_278", 0

sub_seq_rev_278:
    changevar2 VAR_OP_GET_RESULT, VAR_62, VAR_43
    changevar VAR_OP_SUB, VAR_43, 0x1
    if2 IF_EQUAL, VAR_43, 0x3D, _00E4
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_86, 0x1, _0064
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_85, 0x0, _00E4
_0064:
    setstatus2effect BATTLER_ATTACKER, 0xA
    waitmessage
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_85, 0x1, _00A8
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x56, 0x0
    goto _00E4
_00A8:
    printmessage 0x4E6, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x55, 0x0
    removeitem BATTLER_ATTACKER
_00E4:
    endscript

.close
