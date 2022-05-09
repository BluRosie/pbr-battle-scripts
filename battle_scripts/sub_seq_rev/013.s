.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_013", 0

sub_seq_rev_013:
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    printpreparedmessage
    waitmessage
    wait 0x14
    setsomeflag BATTLER_ADDL_EFFECT
    ifmonstat IF_NOTMASK, BATTLER_ADDL_EFFECT, MON_DATA_MOVE_STATE, 0x200400C0, _0048
    togglevanish BATTLER_ADDL_EFFECT, 0x1
_0048:
    endscript

.close
