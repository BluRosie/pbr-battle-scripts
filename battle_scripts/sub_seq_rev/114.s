.nds

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "build/sub_seq_rev/sub_seq_rev_114", 0

sub_seq_rev_114:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0078
    gotosubscript 76
    trynaturalcure BATTLER_ATTACKER, _0038
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_0038:
    deletepokemon BATTLER_ATTACKER
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER
    waitmessage
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x100
    jumptosubseq 10
_0078:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
