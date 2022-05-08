.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_146", 0

sub_seq_rev_146:
    printattackmessage
    waitmessage
    wait 0xA
    changevar2 VAR_OP_SET, VAR_ATTACKER_TEMP, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_ATTACKER, VAR_BATTLER_SOMETHING
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x121
    seteffectprimary BATTLER_xFF
    waitmessage
    cmd_DB BATTLER_xFF
    printmessage 0x244, 0x9, 0xFF, 0xE, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x16F, _00DC
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_ATTACKER_TEMP
    endscript
_00DC:
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_ATTACKER
    endscript

.close
