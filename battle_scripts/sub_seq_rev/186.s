.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_186", 0

sub_seq_rev_186:
    wait 0xA
    changevar VAR_OP_SET, VAR_39, 0x0
    changevar2 VAR_OP_SET, VAR_ITEM_TEMP, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_ATTACKER, VAR_BATTLER_SOMETHING
_0038:
    orderbattlersbyspeed 0x11
    checkbattlersequal BATTLER_ATTACKER, BATTLER_ADDL_EFFECT, _009C
    checknostatus BATTLER_ADDL_EFFECT, _009C
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_HP, 0x0, _009C
    changevar VAR_OP_SET, VAR_34, 0x16
    changevar VAR_OP_SET, VAR_05, 0x3
    gotosubscript 12
_009C:
    changevar VAR_OP_ADD, VAR_39, 0x1
    exitloopatvalue 0x27, _0038
    changevar2 VAR_OP_SET, VAR_ATTACKER, VAR_ITEM_TEMP
    endscript

.close
