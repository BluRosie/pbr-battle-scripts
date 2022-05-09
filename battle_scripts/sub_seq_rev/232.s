.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_232", 0

sub_seq_rev_232:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x108
    seteffectsecondary BATTLER_xFF, BATTLER_xFF, BATTLER_xFF
    waitmessage
    printmessage 0x1F1, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    endscript

.close
