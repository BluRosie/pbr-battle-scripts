.arm.big

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "sub_seq_rev\sub_seq_rev_015", 0

sub_seq_rev_015:
    printmessage 0xB5, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x14
    clearsomeflag BATTLER_ATTACKER
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_STEADFAST, _0070
    changevar VAR_OP_SET, VAR_05, 0x3
    changevar VAR_OP_SET, VAR_34, 0x11
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_ATTACKER
    gotosubscript 12
_0070:
    endscript

.close
