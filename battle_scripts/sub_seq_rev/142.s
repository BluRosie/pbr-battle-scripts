.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_142", 0

sub_seq_rev_142:
    checknostatus BATTLER_DEFENDER, _003C
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _003C
    tryknockitemoff _003C
    printpreparedmessage
    waitmessage
    wait 0x14
_003C:
    endscript

.close
