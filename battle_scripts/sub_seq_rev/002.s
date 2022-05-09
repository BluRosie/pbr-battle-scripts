.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_002", 0

sub_seq_rev_002:
    if IF_MASK, VAR_06, 0x40, _0030
    playmovesoundeffect BATTLER_xFF
    monflicker 0xFF
    waitmessage
    gotosubscript 264
_0030:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x40
    healthbarupdate BATTLER_xFF
    waitmessage
    datahpupdate BATTLER_xFF
    tryfaintmon BATTLER_xFF
    if IF_GREATER, VAR_HP_TEMP, 0x0, _0080
    changevar2 VAR_OP_SET, VAR_ASSURANCE_DAMAGE, VAR_HP_TEMP
_0080:
    endscript

.close
