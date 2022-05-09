.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_260", 0

sub_seq_rev_260:
    checkchatteractivation _0010
    gotosubscript 37
_0010:
    endscript

.close
