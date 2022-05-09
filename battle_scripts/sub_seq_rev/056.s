.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_056", 0

sub_seq_rev_056:
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    random 3, 3
    changevar VAR_OP_LSH, VAR_09, 0x4
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, VAR_09
    changevar2 VAR_OP_TO_BIT, VAR_09, VAR_ATTACKER
    changevar VAR_OP_LSH, VAR_09, 0x8
    changevar2 VAR_OP_SETMASK, VAR_FIELD_EFFECT, VAR_09
    printmessage 0x134, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    endscript

.close
