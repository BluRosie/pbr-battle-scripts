.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_248", 0

sub_seq_rev_248:
    checkeffectactivation _0010
    gotosubscript 27
_0010:
    checkeffectactivation _0020
    gotosubscript 14
_0020:
    endscript

.close
