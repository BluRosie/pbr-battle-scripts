.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_208", 0

sub_seq_rev_208:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    changevar VAR_OP_SET, VAR_34, 0xE
    changevar2 VAR_OP_ADD, VAR_34, VAR_22
    changevar VAR_OP_SET, VAR_05, 0x5
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_BATTLER_SOMETHING
    gotosubscript 12
    gotosubscript 290
    endscript

.close
