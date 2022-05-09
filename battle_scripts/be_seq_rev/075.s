.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/be_seq_rev/be_seq_rev_075", 0

be_seq_rev_075:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _006C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x62, _0050
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_0050:
    gotosubscript 217
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0094
_006C:
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    critcalc
    damagecalc
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000008
_0094:
    gotosubscript 259
    endscript

.close
