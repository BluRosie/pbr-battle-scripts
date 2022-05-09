#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

const char* Battlers[] =
{
    "BATTLER_ALL",
    "BATTLER_ATTACKER",
    "BATTLER_DEFENDER",
    "BATTLER_PLAYER",
    "BATTLER_OPPONENT",
    "BATTLER_FAINTED",
    "BATTLER_REPLACE",
    "BATTLER_ADDL_EFFECT",
    "BATTLER_CHAR_CHECKED",
    "BATTLER_PLAYER_LEFT",
    "BATTLER_ENEMY_LEFT",
    "BATTLER_PLAYER_RIGHT",
    "BATTLER_ENEMY_RIGHT",
    "BATTLER_x0D",
    "BATTLER_ATTACKER2",
    "BATTLER_DEFENDER2",
    "BATTLER_ATTACKER_PARTNER",
    "BATTLER_DEFENDER_PARTNER",
    "BATTLER_WHIRLWINDED",
    "BATTLER_x13",
    "BATTLER_x14",
    "BATTLER_x15",
    "BATTLER_ALL_REPLACED",
    [0xFF] = "BATTLER_xFF",
};

const char* IfConditions[] =
{
    [0] = "IF_EQUAL",
    "IF_NOTEQUAL",
    "IF_GREATER",
    "IF_LESSTHAN",
    "IF_MASK",
    "IF_NOTMASK",
    "IF_AND"
};

const char* VarOperators[] =
{
    [7] = "VAR_OP_SET",
    "VAR_OP_ADD",
    "VAR_OP_SUB",
    "VAR_OP_SETMASK",
    "VAR_OP_CLEARMASK",
    "VAR_OP_MUL",
    "VAR_OP_DIV",
    "VAR_OP_LSH",
    "VAR_OP_RSH",
    "VAR_OP_TO_BIT",
    "VAR_OP_GET_RESULT",
    "VAR_OP_SUB_TO_ZERO",
    "VAR_OP_XOR",
    "VAR_OP_AND",
};

const char* BattleVars[] =
{
    "VAR_BATTLE_TYPE",
    "VAR_CRIT_CHANCE",
    "VAR_ADD_STATUS1",
    "VAR_ADD_STATUS2",
    "VAR_04",
    "VAR_05",
    "VAR_06",
    "VAR_FIELD_EFFECT",
    "VAR_DAMAGE_MULT",
    "VAR_09",
    "VAR_10",
    "VAR_SIDE_EFFECT_PLAYER",
    "VAR_SIDE_EFFECT_OPPONENT",
    "VAR_SIDE_EFFECT_ACTIVE_BATTLER",
    "VAR_DAMAGE",
    "VAR_ATTACKER",
    "VAR_DEFENDER",
    "VAR_ACTIVE_BATTLER",
    "VAR_FAINTED_BATTLER",
    "VAR_SWITCHED_BATTLER",
    "VAR_BATTLER_SOMETHING",
    "VAR_DAMAGE_BACKUP",
    "VAR_22",
    "VAR_MONEY",
    "VAR_CURRENT_MOVE",
    "VAR_TURNS",
    "VAR_ATTACKER_TEMP",
    "VAR_DEFENDER_TEMP",
    "VAR_MOVE_TEMP",
    "VAR_ITEM_TEMP",
    "VAR_ABILITY_TEMP",
    "VAR_SUCCESSIVE_HIT",
    "VAR_HP_TEMP",
    "VAR_BATTLE_RESULT",
    "VAR_34",
    "VAR_MOVE_TEMP2",
    "VAR_ITEM_TEMP2",
    "VAR_ABILITY_TEMP2",
    "VAR_WEATHER_TURNS",
    "VAR_39",
    "VAR_40",
    "VAR_PHYSICAL_DAMAGE",
    "VAR_SPECIAL_DAMAGE",
    "VAR_43",
    "VAR_WAS_MOVE_CRITICAL",
    "VAR_LAST_DAMAGING_ATTACKER",
    "VAR_LAST_DAMAGING_DEFENDER",
    "VAR_47",
    "VAR_48",
    "VAR_49",
    "VAR_FLING_TEMP",
    "VAR_FLING_SUBSCRIPT",
    "VAR_BATTLE_STATUS",
    "VAR_MOVE_BACKUP",
    "VAR_54",
    "VAR_SAFARI_BALL_COUNT",
    "VAR_SWITCHED_BATTLER_TEMP",
    "VAR_MOVE_TYPE",
    "VAR_MOVE_EFFECT",
    "VAR_RULESET",
    "VAR_60",
    "VAR_61",
    "VAR_62",
    "VAR_ATTACKER_TEMP2",
    "VAR_DEFENDER_TEMP2",
    "VAR_65",
    "VAR_ASSURANCE_DAMAGE",
    "VAR_ASSURANCE_DAMAGE_AGAINST_DEFENDER",
    "VAR_68",
    "VAR_69",
    "VAR_70",
    "VAR_71",
    "VAR_72",
    "VAR_73",
    "VAR_74",
    "VAR_75",
    "VAR_76",
    "VAR_77",
    "VAR_78",
    "VAR_79",
    "VAR_80",
    "VAR_81",
    "VAR_82",
    "VAR_83",
    "VAR_84",
    "VAR_85",
    "VAR_86",
    "VAR_87",
    "VAR_88",
    "VAR_89",
    "VAR_90",
};

const char* MonDataFields[] =
{
    "MON_DATA_SPECIES",
    "MON_DATA_ATTACK",
    "MON_DATA_DEFENSE",
    "MON_DATA_SPEED",
    "MON_DATA_SPATK",
    "MON_DATA_SPDEF",
    "MON_DATA_MOVE_1",
    "MON_DATA_MOVE_2",
    "MON_DATA_MOVE_3",
    "MON_DATA_MOVE_4",
    "MON_DATA_10",
    "MON_DATA_11",
    "MON_DATA_12",
    "MON_DATA_13",
    "MON_DATA_14",
    "MON_DATA_15",
    "MON_DATA_EGG_FLAG",
    "MON_DATA_NICKNAME_FLAG",
    "MON_DATA_18",
    "MON_DATA_STAT_STAGE_ATTACK",
    "MON_DATA_STAT_STAGE_DEFENSE",
    "MON_DATA_STAT_STAGE_SPEED",
    "MON_DATA_STAT_STAGE_SPATK",
    "MON_DATA_STAT_STAGE_SPDEF",
    "MON_DATA_STAT_STAGE_ACCURACY",
    "MON_DATA_STAT_STAGE_EVASION",
    "MON_DATA_ABILITY",
    "MON_DATA_TYPE_1",
    "MON_DATA_TYPE_2",
    "MON_DATA_GENDER",
    "MON_DATA_30",
    "MON_DATA_PP_1",
    "MON_DATA_PP_2",
    "MON_DATA_PP_3",
    "MON_DATA_PP_4",
    "MON_DATA_PP_BONUS_1",
    "MON_DATA_PP_BONUS_2",
    "MON_DATA_PP_BONUS_3",
    "MON_DATA_PP_BONUS_4",
    "MON_DATA_PP_MAX_1",
    "MON_DATA_PP_MAX_2",
    "MON_DATA_PP_MAX_3",
    "MON_DATA_PP_MAX_4",
    "MON_DATA_LEVEL",
    "MON_DATA_FRIENDSHIP",
    "MON_DATA_NICKNAME",
    "MON_DATA_46",
    "MON_DATA_HP",
    "MON_DATA_MA",
    "MON_DATA_49",
    "MON_DATA_EXP",
    "MON_DATA_PID",
    "MON_DATA_STATUS_1",
    "MON_DATA_STATUS_2",
    "MON_DATA_54",
    "MON_DATA_ITEM",
    "MON_DATA_56",
    "MON_DATA_57",
    "MON_DATA_58",
    "MON_DATA_MOVE_STATE",
    "MON_DATA_MOVE_STATE_2",
    "MON_DATA_DISABLE_COUNTER",
    "MON_DATA_ENCORE_COUNTER",
    "MON_DATA_CHARGE_COUNTER",
    "MON_DATA_TAUNT_COUNTER",
    "MON_DATA_65",
    "MON_DATA_PERISH_SONG_COUNTER",
    "MON_DATA_ROLLOUT_COUNTER",
    "MON_DATA_FURY_CUTTER_COUNTER",
    "MON_DATA_STOCKPILE_COUNT",
    "MON_DATA_STOCKPILE_DEF_COUNT",
    "MON_DATA_STOCKPILE_SPDEF_COUNT",
    "MON_DATA_72",
    "MON_DATA_73",
    "MON_DATA_LOCKON_TARGET",
    "MON_DATA_MIMIC_BIT",
    "MON_DATA_BIND_TARGET",
    "MON_DATA_MEAN_LOOK_TARGET",
    "MON_DATA_LAST_RESORT_COUNTER",
    "MON_DATA_79",
    "MON_DATA_HEAL_BLOCK_COUNTER",
    "MON_DATA_81",
    "MON_DATA_82",
    "MON_DATA_METRONOME_VAR",
    "MON_DATA_84",
    "MON_DATA_85",
    "MON_DATA_86",
    "MON_DATA_87",
    "MON_DATA_FAKE_OUT_COUNTER",
    "MON_DATA_SLOW_START_COUNTER",
    "MON_DATA_SUBSTITUTE_HP",
    "MON_DATA_91",
    "MON_DATA_DISABLED_MOVE",
    "MON_DATA_ENCORED_MOVE",
    "MON_DATA_94",
    "MON_DATA_HP_RECOVERED_BY_ITEM",
    "MON_DATA_SLOW_START_ACTIVE",
    "MON_DATA_SLOW_START_INACTIVE",
    "MON_DATA_FORM",
    [100] = "MON_DATA_VARIABLE",
};

const char* Abilities[] =
{
    "ABILITY_NONE",
    "ABILITY_STENCH",
    "ABILITY_DRIZZLE",
    "ABILITY_SPEED_BOOST",
    "ABILITY_BATTLE_ARMOR",
    "ABILITY_STURDY",
    "ABILITY_DAMP",
    "ABILITY_LIMBER",
    "ABILITY_SAND_VEIL",
    "ABILITY_STATIC",
    "ABILITY_VOLT_ABSORB",
    "ABILITY_WATER_ABSORB",
    "ABILITY_OBLIVIOUS",
    "ABILITY_CLOUD_NINE",
    "ABILITY_COMPOUND_EYES",
    "ABILITY_INSOMNIA",
    "ABILITY_COLOR_CHANGE",
    "ABILITY_IMMUNITY",
    "ABILITY_FLASH_FIRE",
    "ABILITY_SHIELD_DUST",
    "ABILITY_OWN_TEMPO",
    "ABILITY_SUCTION_CUPS",
    "ABILITY_INTIMIDATE",
    "ABILITY_SHADOW_TAG",
    "ABILITY_ROUGH_SKIN",
    "ABILITY_WONDER_GUARD",
    "ABILITY_LEVITATE",
    "ABILITY_EFFECT_SPORE",
    "ABILITY_SYNCHRONIZE",
    "ABILITY_CLEAR_BODY",
    "ABILITY_NATURAL_CURE",
    "ABILITY_LIGHTNING_ROD",
    "ABILITY_SERENE_GRACE",
    "ABILITY_SWIFT_SWIM",
    "ABILITY_CHLOROPHYLL",
    "ABILITY_ILLUMINATE",
    "ABILITY_TRACE",
    "ABILITY_HUGE_POWER",
    "ABILITY_POISON_POINT",
    "ABILITY_INNER_FOCUS",
    "ABILITY_MAGMA_ARMOR",
    "ABILITY_WATER_VEIL",
    "ABILITY_MAGNET_PULL",
    "ABILITY_SOUNDPROOF",
    "ABILITY_RAIN_DISH",
    "ABILITY_SAND_STREAM",
    "ABILITY_PRESSURE",
    "ABILITY_THICK_FAT",
    "ABILITY_EARLY_BIRD",
    "ABILITY_FLAME_BODY",
    "ABILITY_RUN_AWAY",
    "ABILITY_KEEN_EYE",
    "ABILITY_HYPER_CUTTER",
    "ABILITY_PICKUP",
    "ABILITY_TRUANT",
    "ABILITY_HUSTLE",
    "ABILITY_CUTE_CHARM",
    "ABILITY_PLUS",
    "ABILITY_MINUS",
    "ABILITY_FORECAST",
    "ABILITY_STICKY_HOLD",
    "ABILITY_SHED_SKIN",
    "ABILITY_GUTS",
    "ABILITY_MARVEL_SCALE",
    "ABILITY_LIQUID_OOZE",
    "ABILITY_OVERGROW",
    "ABILITY_BLAZE",
    "ABILITY_TORRENT",
    "ABILITY_SWARM",
    "ABILITY_ROCK_HEAD",
    "ABILITY_DROUGHT",
    "ABILITY_ARENA_TRAP",
    "ABILITY_VITAL_SPIRIT",
    "ABILITY_WHITE_SMOKE",
    "ABILITY_PURE_POWER",
    "ABILITY_SHELL_ARMOR",
    "ABILITY_AIR_LOCK",
    "ABILITY_TANGLED_FEET",
    "ABILITY_MOTOR_DRIVE",
    "ABILITY_RIVALRY",
    "ABILITY_STEADFAST",
    "ABILITY_SNOW_CLOAK",
    "ABILITY_GLUTTONY",
    "ABILITY_ANGER_POINT",
    "ABILITY_UNBURDEN",
    "ABILITY_HEATPROOF",
    "ABILITY_SIMPLE",
    "ABILITY_DRY_SKIN",
    "ABILITY_DOWNLOAD",
    "ABILITY_IRON_FIST",
    "ABILITY_POISON_HEAL",
    "ABILITY_ADAPTABILITY",
    "ABILITY_SKILL_LINK",
    "ABILITY_HYDRATION",
    "ABILITY_SOLAR_POWER",
    "ABILITY_QUICK_FEET",
    "ABILITY_NORMALIZE",
    "ABILITY_SNIPER",
    "ABILITY_MAGIC_GUARD",
    "ABILITY_NO_GUARD",
    "ABILITY_STALL",
    "ABILITY_TECHNICIAN",
    "ABILITY_LEAF_GUARD",
    "ABILITY_KLUTZ",
    "ABILITY_MOLD_BREAKER",
    "ABILITY_SUPER_LUCK",
    "ABILITY_AFTERMATH",
    "ABILITY_ANTICIPATION",
    "ABILITY_FOREWARN",
    "ABILITY_UNAWARE",
    "ABILITY_TINTED_LENS",
    "ABILITY_FILTER",
    "ABILITY_SLOW_START",
    "ABILITY_SCRAPPY",
    "ABILITY_STORM_DRAIN",
    "ABILITY_ICE_BODY",
    "ABILITY_SOLID_ROCK",
    "ABILITY_SNOW_WARNING",
    "ABILITY_HONEY_GATHER",
    "ABILITY_FRISK",
    "ABILITY_RECKLESS",
    "ABILITY_MULTITYPE",
    "ABILITY_FLOWER_GIFT",
    "ABILITY_BAD_DREAMS",
};

const char* Moves[] =
{
    "MOVE_NONE",
    "MOVE_POUND",
    "MOVE_KARATE_CHOP",
    "MOVE_DOUBLE_SLAP",
    "MOVE_COMET_PUNCH",
    "MOVE_MEGA_PUNCH",
    "MOVE_PAY_DAY",
    "MOVE_FIRE_PUNCH",
    "MOVE_ICE_PUNCH",
    "MOVE_THUNDER_PUNCH",
    "MOVE_SCRATCH",
    "MOVE_VICE_GRIP",
    "MOVE_GUILLOTINE",
    "MOVE_RAZOR_WIND",
    "MOVE_SWORDS_DANCE",
    "MOVE_CUT",
    "MOVE_GUST",
    "MOVE_WING_ATTACK",
    "MOVE_WHIRLWIND",
    "MOVE_FLY",
    "MOVE_BIND",
    "MOVE_SLAM",
    "MOVE_VINE_WHIP",
    "MOVE_STOMP",
    "MOVE_DOUBLE_KICK",
    "MOVE_MEGA_KICK",
    "MOVE_JUMP_KICK",
    "MOVE_ROLLING_KICK",
    "MOVE_SAND_ATTACK",
    "MOVE_HEADBUTT",
    "MOVE_HORN_ATTACK",
    "MOVE_FURY_ATTACK",
    "MOVE_HORN_DRILL",
    "MOVE_TACKLE",
    "MOVE_BODY_SLAM",
    "MOVE_WRAP",
    "MOVE_TAKE_DOWN",
    "MOVE_THRASH",
    "MOVE_DOUBLE_EDGE",
    "MOVE_TAIL_WHIP",
    "MOVE_POISON_STING",
    "MOVE_TWINEEDLE",
    "MOVE_PIN_MISSILE",
    "MOVE_LEER",
    "MOVE_BITE",
    "MOVE_GROWL",
    "MOVE_ROAR",
    "MOVE_SING",
    "MOVE_SUPERSONIC",
    "MOVE_SONIC_BOOM",
    "MOVE_DISABLE",
    "MOVE_ACID",
    "MOVE_EMBER",
    "MOVE_FLAMETHROWER",
    "MOVE_MIST",
    "MOVE_WATER_GUN",
    "MOVE_HYDRO_PUMP",
    "MOVE_SURF",
    "MOVE_ICE_BEAM",
    "MOVE_BLIZZARD",
    "MOVE_PSYBEAM",
    "MOVE_BUBBLE_BEAM",
    "MOVE_AURORA_BEAM",
    "MOVE_HYPER_BEAM",
    "MOVE_PECK",
    "MOVE_DRILL_PECK",
    "MOVE_SUBMISSION",
    "MOVE_LOW_KICK",
    "MOVE_COUNTER",
    "MOVE_SEISMIC_TOSS",
    "MOVE_STRENGTH",
    "MOVE_ABSORB",
    "MOVE_MEGA_DRAIN",
    "MOVE_LEECH_SEED",
    "MOVE_GROWTH",
    "MOVE_RAZOR_LEAF",
    "MOVE_SOLAR_BEAM",
    "MOVE_POISON_POWDER",
    "MOVE_STUN_SPORE",
    "MOVE_SLEEP_POWDER",
    "MOVE_PETAL_DANCE",
    "MOVE_STRING_SHOT",
    "MOVE_DRAGON_RAGE",
    "MOVE_FIRE_SPIN",
    "MOVE_THUNDER_SHOCK",
    "MOVE_THUNDERBOLT",
    "MOVE_THUNDER_WAVE",
    "MOVE_THUNDER",
    "MOVE_ROCK_THROW",
    "MOVE_EARTHQUAKE",
    "MOVE_FISSURE",
    "MOVE_DIG",
    "MOVE_TOXIC",
    "MOVE_CONFUSION",
    "MOVE_PSYCHIC",
    "MOVE_HYPNOSIS",
    "MOVE_MEDITATE",
    "MOVE_AGILITY",
    "MOVE_QUICK_ATTACK",
    "MOVE_RAGE",
    "MOVE_TELEPORT",
    "MOVE_NIGHT_SHADE",
    "MOVE_MIMIC",
    "MOVE_SCREECH",
    "MOVE_DOUBLE_TEAM",
    "MOVE_RECOVER",
    "MOVE_HARDEN",
    "MOVE_MINIMIZE",
    "MOVE_SMOKESCREEN",
    "MOVE_CONFUSE_RAY",
    "MOVE_WITHDRAW",
    "MOVE_DEFENSE_CURL",
    "MOVE_BARRIER",
    "MOVE_LIGHT_SCREEN",
    "MOVE_HAZE",
    "MOVE_REFLECT",
    "MOVE_FOCUS_ENERGY",
    "MOVE_BIDE",
    "MOVE_METRONOME",
    "MOVE_MIRROR_MOVE",
    "MOVE_SELF_DESTRUCT",
    "MOVE_EGG_BOMB",
    "MOVE_LICK",
    "MOVE_SMOG",
    "MOVE_SLUDGE",
    "MOVE_BONE_CLUB",
    "MOVE_FIRE_BLAST",
    "MOVE_WATERFALL",
    "MOVE_CLAMP",
    "MOVE_SWIFT",
    "MOVE_SKULL_BASH",
    "MOVE_SPIKE_CANNON",
    "MOVE_CONSTRICT",
    "MOVE_AMNESIA",
    "MOVE_KINESIS",
    "MOVE_SOFT_BOILED",
    "MOVE_HI_JUMP_KICK",
    "MOVE_GLARE",
    "MOVE_DREAM_EATER",
    "MOVE_POISON_GAS",
    "MOVE_BARRAGE",
    "MOVE_LEECH_LIFE",
    "MOVE_LOVELY_KISS",
    "MOVE_SKY_ATTACK",
    "MOVE_TRANSFORM",
    "MOVE_BUBBLE",
    "MOVE_DIZZY_PUNCH",
    "MOVE_SPORE",
    "MOVE_FLASH",
    "MOVE_PSYWAVE",
    "MOVE_SPLASH",
    "MOVE_ACID_ARMOR",
    "MOVE_CRABHAMMER",
    "MOVE_EXPLOSION",
    "MOVE_FURY_SWIPES",
    "MOVE_BONEMERANG",
    "MOVE_REST",
    "MOVE_ROCK_SLIDE",
    "MOVE_HYPER_FANG",
    "MOVE_SHARPEN",
    "MOVE_CONVERSION",
    "MOVE_TRI_ATTACK",
    "MOVE_SUPER_FANG",
    "MOVE_SLASH",
    "MOVE_SUBSTITUTE",
    "MOVE_STRUGGLE",
    "MOVE_SKETCH",
    "MOVE_TRIPLE_KICK",
    "MOVE_THIEF",
    "MOVE_SPIDER_WEB",
    "MOVE_MIND_READER",
    "MOVE_NIGHTMARE",
    "MOVE_FLAME_WHEEL",
    "MOVE_SNORE",
    "MOVE_CURSE",
    "MOVE_FLAIL",
    "MOVE_CONVERSION_2",
    "MOVE_AEROBLAST",
    "MOVE_COTTON_SPORE",
    "MOVE_REVERSAL",
    "MOVE_SPITE",
    "MOVE_POWDER_SNOW",
    "MOVE_PROTECT",
    "MOVE_MACH_PUNCH",
    "MOVE_SCARY_FACE",
    "MOVE_FAINT_ATTACK",
    "MOVE_SWEET_KISS",
    "MOVE_BELLY_DRUM",
    "MOVE_SLUDGE_BOMB",
    "MOVE_MUD_SLAP",
    "MOVE_OCTAZOOKA",
    "MOVE_SPIKES",
    "MOVE_ZAP_CANNON",
    "MOVE_FORESIGHT",
    "MOVE_DESTINY_BOND",
    "MOVE_PERISH_SONG",
    "MOVE_ICY_WIND",
    "MOVE_DETECT",
    "MOVE_BONE_RUSH",
    "MOVE_LOCK_ON",
    "MOVE_OUTRAGE",
    "MOVE_SANDSTORM",
    "MOVE_GIGA_DRAIN",
    "MOVE_ENDURE",
    "MOVE_CHARM",
    "MOVE_ROLLOUT",
    "MOVE_FALSE_SWIPE",
    "MOVE_SWAGGER",
    "MOVE_MILK_DRINK",
    "MOVE_SPARK",
    "MOVE_FURY_CUTTER",
    "MOVE_STEEL_WING",
    "MOVE_MEAN_LOOK",
    "MOVE_ATTRACT",
    "MOVE_SLEEP_TALK",
    "MOVE_HEAL_BELL",
    "MOVE_RETURN",
    "MOVE_PRESENT",
    "MOVE_FRUSTRATION",
    "MOVE_SAFEGUARD",
    "MOVE_PAIN_SPLIT",
    "MOVE_SACRED_FIRE",
    "MOVE_MAGNITUDE",
    "MOVE_DYNAMIC_PUNCH",
    "MOVE_MEGAHORN",
    "MOVE_DRAGON_BREATH",
    "MOVE_BATON_PASS",
    "MOVE_ENCORE",
    "MOVE_PURSUIT",
    "MOVE_RAPID_SPIN",
    "MOVE_SWEET_SCENT",
    "MOVE_IRON_TAIL",
    "MOVE_METAL_CLAW",
    "MOVE_VITAL_THROW",
    "MOVE_MORNING_SUN",
    "MOVE_SYNTHESIS",
    "MOVE_MOONLIGHT",
    "MOVE_HIDDEN_POWER",
    "MOVE_CROSS_CHOP",
    "MOVE_TWISTER",
    "MOVE_RAIN_DANCE",
    "MOVE_SUNNY_DAY",
    "MOVE_CRUNCH",
    "MOVE_MIRROR_COAT",
    "MOVE_PSYCH_UP",
    "MOVE_EXTREME_SPEED",
    "MOVE_ANCIENT_POWER",
    "MOVE_SHADOW_BALL",
    "MOVE_FUTURE_SIGHT",
    "MOVE_ROCK_SMASH",
    "MOVE_WHIRLPOOL",
    "MOVE_BEAT_UP",
    "MOVE_FAKE_OUT",
    "MOVE_UPROAR",
    "MOVE_STOCKPILE",
    "MOVE_SPIT_UP",
    "MOVE_SWALLOW",
    "MOVE_HEAT_WAVE",
    "MOVE_HAIL",
    "MOVE_TORMENT",
    "MOVE_FLATTER",
    "MOVE_WILL_O_WISP",
    "MOVE_MEMENTO",
    "MOVE_FACADE",
    "MOVE_FOCUS_PUNCH",
    "MOVE_SMELLING_SALT",
    "MOVE_FOLLOW_ME",
    "MOVE_NATURE_POWER",
    "MOVE_CHARGE",
    "MOVE_TAUNT",
    "MOVE_HELPING_HAND",
    "MOVE_TRICK",
    "MOVE_ROLE_PLAY",
    "MOVE_WISH",
    "MOVE_ASSIST",
    "MOVE_INGRAIN",
    "MOVE_SUPERPOWER",
    "MOVE_MAGIC_COAT",
    "MOVE_RECYCLE",
    "MOVE_REVENGE",
    "MOVE_BRICK_BREAK",
    "MOVE_YAWN",
    "MOVE_KNOCK_OFF",
    "MOVE_ENDEAVOR",
    "MOVE_ERUPTION",
    "MOVE_SKILL_SWAP",
    "MOVE_IMPRISON",
    "MOVE_REFRESH",
    "MOVE_GRUDGE",
    "MOVE_SNATCH",
    "MOVE_SECRET_POWER",
    "MOVE_DIVE",
    "MOVE_ARM_THRUST",
    "MOVE_CAMOUFLAGE",
    "MOVE_TAIL_GLOW",
    "MOVE_LUSTER_PURGE",
    "MOVE_MIST_BALL",
    "MOVE_FEATHER_DANCE",
    "MOVE_TEETER_DANCE",
    "MOVE_BLAZE_KICK",
    "MOVE_MUD_SPORT",
    "MOVE_ICE_BALL",
    "MOVE_NEEDLE_ARM",
    "MOVE_SLACK_OFF",
    "MOVE_HYPER_VOICE",
    "MOVE_POISON_FANG",
    "MOVE_CRUSH_CLAW",
    "MOVE_BLAST_BURN",
    "MOVE_HYDRO_CANNON",
    "MOVE_METEOR_MASH",
    "MOVE_ASTONISH",
    "MOVE_WEATHER_BALL",
    "MOVE_AROMATHERAPY",
    "MOVE_FAKE_TEARS",
    "MOVE_AIR_CUTTER",
    "MOVE_OVERHEAT",
    "MOVE_ODOR_SLEUTH",
    "MOVE_ROCK_TOMB",
    "MOVE_SILVER_WIND",
    "MOVE_METAL_SOUND",
    "MOVE_GRASS_WHISTLE",
    "MOVE_TICKLE",
    "MOVE_COSMIC_POWER",
    "MOVE_WATER_SPOUT",
    "MOVE_SIGNAL_BEAM",
    "MOVE_SHADOW_PUNCH",
    "MOVE_EXTRASENSORY",
    "MOVE_SKY_UPPERCUT",
    "MOVE_SAND_TOMB",
    "MOVE_SHEER_COLD",
    "MOVE_MUDDY_WATER",
    "MOVE_BULLET_SEED",
    "MOVE_AERIAL_ACE",
    "MOVE_ICICLE_SPEAR",
    "MOVE_IRON_DEFENSE",
    "MOVE_BLOCK",
    "MOVE_HOWL",
    "MOVE_DRAGON_CLAW",
    "MOVE_FRENZY_PLANT",
    "MOVE_BULK_UP",
    "MOVE_BOUNCE",
    "MOVE_MUD_SHOT",
    "MOVE_POISON_TAIL",
    "MOVE_COVET",
    "MOVE_VOLT_TACKLE",
    "MOVE_MAGICAL_LEAF",
    "MOVE_WATER_SPORT",
    "MOVE_CALM_MIND",
    "MOVE_LEAF_BLADE",
    "MOVE_DRAGON_DANCE",
    "MOVE_ROCK_BLAST",
    "MOVE_SHOCK_WAVE",
    "MOVE_WATER_PULSE",
    "MOVE_DOOM_DESIRE",
    "MOVE_PSYCHO_BOOST",
    "MOVE_ROOST",
    "MOVE_GRAVITY",
    "MOVE_MIRACLE_EYE",
    "MOVE_WAKE_UP_SLAP",
    "MOVE_HAMMER_ARM",
    "MOVE_GYRO_BALL",
    "MOVE_HEALING_WISH",
    "MOVE_BRINE",
    "MOVE_NATURAL_GIFT",
    "MOVE_FEINT",
    "MOVE_PLUCK",
    "MOVE_TAILWIND",
    "MOVE_ACUPRESSURE",
    "MOVE_METAL_BURST",
    "MOVE_U_TURN",
    "MOVE_CLOSE_COMBAT",
    "MOVE_PAYBACK",
    "MOVE_ASSURANCE",
    "MOVE_EMBARGO",
    "MOVE_FLING",
    "MOVE_PSYCHO_SHIFT",
    "MOVE_TRUMP_CARD",
    "MOVE_HEAL_BLOCK",
    "MOVE_WRING_OUT",
    "MOVE_POWER_TRICK",
    "MOVE_GASTRO_ACID",
    "MOVE_LUCKY_CHANT",
    "MOVE_ME_FIRST",
    "MOVE_COPYCAT",
    "MOVE_POWER_SWAP",
    "MOVE_GUARD_SWAP",
    "MOVE_PUNISHMENT",
    "MOVE_LAST_RESORT",
    "MOVE_WORRY_SEED",
    "MOVE_SUCKER_PUNCH",
    "MOVE_TOXIC_SPIKES",
    "MOVE_HEART_SWAP",
    "MOVE_AQUA_RING",
    "MOVE_MAGNET_RISE",
    "MOVE_FLARE_BLITZ",
    "MOVE_FORCE_PALM",
    "MOVE_AURA_SPHERE",
    "MOVE_ROCK_POLISH",
    "MOVE_POISON_JAB",
    "MOVE_DARK_PULSE",
    "MOVE_NIGHT_SLASH",
    "MOVE_AQUA_TAIL",
    "MOVE_SEED_BOMB",
    "MOVE_AIR_SLASH",
    "MOVE_X_SCISSOR",
    "MOVE_BUG_BUZZ",
    "MOVE_DRAGON_PULSE",
    "MOVE_DRAGON_RUSH",
    "MOVE_POWER_GEM",
    "MOVE_DRAIN_PUNCH",
    "MOVE_VACUUM_WAVE",
    "MOVE_FOCUS_BLAST",
    "MOVE_ENERGY_BALL",
    "MOVE_BRAVE_BIRD",
    "MOVE_EARTH_POWER",
    "MOVE_SWITCHEROO",
    "MOVE_GIGA_IMPACT",
    "MOVE_NASTY_PLOT",
    "MOVE_BULLET_PUNCH",
    "MOVE_AVALANCHE",
    "MOVE_ICE_SHARD",
    "MOVE_SHADOW_CLAW",
    "MOVE_THUNDER_FANG",
    "MOVE_ICE_FANG",
    "MOVE_FIRE_FANG",
    "MOVE_SHADOW_SNEAK",
    "MOVE_MUD_BOMB",
    "MOVE_PSYCHO_CUT",
    "MOVE_ZEN_HEADBUTT",
    "MOVE_MIRROR_SHOT",
    "MOVE_FLASH_CANNON",
    "MOVE_ROCK_CLIMB",
    "MOVE_DEFOG",
    "MOVE_TRICK_ROOM",
    "MOVE_DRACO_METEOR",
    "MOVE_DISCHARGE",
    "MOVE_LAVA_PLUME",
    "MOVE_LEAF_STORM",
    "MOVE_POWER_WHIP",
    "MOVE_ROCK_WRECKER",
    "MOVE_CROSS_POISON",
    "MOVE_GUNK_SHOT",
    "MOVE_IRON_HEAD",
    "MOVE_MAGNET_BOMB",
    "MOVE_STONE_EDGE",
    "MOVE_CAPTIVATE",
    "MOVE_STEALTH_ROCK",
    "MOVE_GRASS_KNOT",
    "MOVE_CHATTER",
    "MOVE_JUDGMENT",
    "MOVE_BUG_BITE",
    "MOVE_CHARGE_BEAM",
    "MOVE_WOOD_HAMMER",
    "MOVE_AQUA_JET",
    "MOVE_ATTACK_ORDER",
    "MOVE_DEFEND_ORDER",
    "MOVE_HEAL_ORDER",
    "MOVE_HEAD_SMASH",
    "MOVE_DOUBLE_HIT",
    "MOVE_ROAR_OF_TIME",
    "MOVE_SPACIAL_REND",
    "MOVE_LUNAR_DANCE",
    "MOVE_CRUSH_GRIP",
    "MOVE_MAGMA_STORM",
    "MOVE_DARK_VOID",
    "MOVE_SEED_FLARE",
    "MOVE_OMINOUS_WIND",
    "MOVE_SHADOW_FORCE",
};

const char* Types[] =
{
    "TYPE_NORMAL",
    "TYPE_FIGHTING",
    "TYPE_FLYING",
    "TYPE_POISON",
    "TYPE_GROUND",
    "TYPE_ROCK",
    "TYPE_BUG",
    "TYPE_GHOST",
    "TYPE_STEEL",
    "TYPE_MYSTERY",
    "TYPE_FIRE",
    "TYPE_WATER",
    "TYPE_GRASS",
    "TYPE_ELECTRIC",
    "TYPE_PSYCHIC",
    "TYPE_ICE",
    "TYPE_DRAGON",
    "TYPE_DARK",
};

const char* Pokemon[] =
{
    "SPECIES_NONE",
    "SPECIES_BULBASAUR",
    "SPECIES_IVYSAUR",
    "SPECIES_VENUSAUR",
    "SPECIES_CHARMANDER",
    "SPECIES_CHARMELEON",
    "SPECIES_CHARIZARD",
    "SPECIES_SQUIRTLE",
    "SPECIES_WARTORTLE",
    "SPECIES_BLASTOISE",
    "SPECIES_CATERPIE",
    "SPECIES_METAPOD",
    "SPECIES_BUTTERFREE",
    "SPECIES_WEEDLE",
    "SPECIES_KAKUNA",
    "SPECIES_BEEDRILL",
    "SPECIES_PIDGEY",
    "SPECIES_PIDGEOTTO",
    "SPECIES_PIDGEOT",
    "SPECIES_RATTATA",
    "SPECIES_RATICATE",
    "SPECIES_SPEAROW",
    "SPECIES_FEAROW",
    "SPECIES_EKANS",
    "SPECIES_ARBOK",
    "SPECIES_PIKACHU",
    "SPECIES_RAICHU",
    "SPECIES_SANDSHREW",
    "SPECIES_SANDSLASH",
    "SPECIES_NIDORAN_F",
    "SPECIES_NIDORINA",
    "SPECIES_NIDOQUEEN",
    "SPECIES_NIDORAN_M",
    "SPECIES_NIDORINO",
    "SPECIES_NIDOKING",
    "SPECIES_CLEFAIRY",
    "SPECIES_CLEFABLE",
    "SPECIES_VULPIX",
    "SPECIES_NINETALES",
    "SPECIES_JIGGLYPUFF",
    "SPECIES_WIGGLYTUFF",
    "SPECIES_ZUBAT",
    "SPECIES_GOLBAT",
    "SPECIES_ODDISH",
    "SPECIES_GLOOM",
    "SPECIES_VILEPLUME",
    "SPECIES_PARAS",
    "SPECIES_PARASECT",
    "SPECIES_VENONAT",
    "SPECIES_VENOMOTH",
    "SPECIES_DIGLETT",
    "SPECIES_DUGTRIO",
    "SPECIES_MEOWTH",
    "SPECIES_PERSIAN",
    "SPECIES_PSYDUCK",
    "SPECIES_GOLDUCK",
    "SPECIES_MANKEY",
    "SPECIES_PRIMEAPE",
    "SPECIES_GROWLITHE",
    "SPECIES_ARCANINE",
    "SPECIES_POLIWAG",
    "SPECIES_POLIWHIRL",
    "SPECIES_POLIWRATH",
    "SPECIES_ABRA",
    "SPECIES_KADABRA",
    "SPECIES_ALAKAZAM",
    "SPECIES_MACHOP",
    "SPECIES_MACHOKE",
    "SPECIES_MACHAMP",
    "SPECIES_BELLSPROUT",
    "SPECIES_WEEPINBELL",
    "SPECIES_VICTREEBEL",
    "SPECIES_TENTACOOL",
    "SPECIES_TENTACRUEL",
    "SPECIES_GEODUDE",
    "SPECIES_GRAVELER",
    "SPECIES_GOLEM",
    "SPECIES_PONYTA",
    "SPECIES_RAPIDASH",
    "SPECIES_SLOWPOKE",
    "SPECIES_SLOWBRO",
    "SPECIES_MAGNEMITE",
    "SPECIES_MAGNETON",
    "SPECIES_FARFETCHD",
    "SPECIES_DODUO",
    "SPECIES_DODRIO",
    "SPECIES_SEEL",
    "SPECIES_DEWGONG",
    "SPECIES_GRIMER",
    "SPECIES_MUK",
    "SPECIES_SHELLDER",
    "SPECIES_CLOYSTER",
    "SPECIES_GASTLY",
    "SPECIES_HAUNTER",
    "SPECIES_GENGAR",
    "SPECIES_ONIX",
    "SPECIES_DROWZEE",
    "SPECIES_HYPNO",
    "SPECIES_KRABBY",
    "SPECIES_KINGLER",
    "SPECIES_VOLTORB",
    "SPECIES_ELECTRODE",
    "SPECIES_EXEGGCUTE",
    "SPECIES_EXEGGUTOR",
    "SPECIES_CUBONE",
    "SPECIES_MAROWAK",
    "SPECIES_HITMONLEE",
    "SPECIES_HITMONCHAN",
    "SPECIES_LICKITUNG",
    "SPECIES_KOFFING",
    "SPECIES_WEEZING",
    "SPECIES_RHYHORN",
    "SPECIES_RHYDON",
    "SPECIES_CHANSEY",
    "SPECIES_TANGELA",
    "SPECIES_KANGASKHAN",
    "SPECIES_HORSEA",
    "SPECIES_SEADRA",
    "SPECIES_GOLDEEN",
    "SPECIES_SEAKING",
    "SPECIES_STARYU",
    "SPECIES_STARMIE",
    "SPECIES_MR_MIME",
    "SPECIES_SCYTHER",
    "SPECIES_JYNX",
    "SPECIES_ELECTABUZZ",
    "SPECIES_MAGMAR",
    "SPECIES_PINSIR",
    "SPECIES_TAUROS",
    "SPECIES_MAGIKARP",
    "SPECIES_GYARADOS",
    "SPECIES_LAPRAS",
    "SPECIES_DITTO",
    "SPECIES_EEVEE",
    "SPECIES_VAPOREON",
    "SPECIES_JOLTEON",
    "SPECIES_FLAREON",
    "SPECIES_PORYGON",
    "SPECIES_OMANYTE",
    "SPECIES_OMASTAR",
    "SPECIES_KABUTO",
    "SPECIES_KABUTOPS",
    "SPECIES_AERODACTYL",
    "SPECIES_SNORLAX",
    "SPECIES_ARTICUNO",
    "SPECIES_ZAPDOS",
    "SPECIES_MOLTRES",
    "SPECIES_DRATINI",
    "SPECIES_DRAGONAIR",
    "SPECIES_DRAGONITE",
    "SPECIES_MEWTWO",
    "SPECIES_MEW",
    "SPECIES_CHIKORITA",
    "SPECIES_BAYLEEF",
    "SPECIES_MEGANIUM",
    "SPECIES_CYNDAQUIL",
    "SPECIES_QUILAVA",
    "SPECIES_TYPHLOSION",
    "SPECIES_TOTODILE",
    "SPECIES_CROCONAW",
    "SPECIES_FERALIGATR",
    "SPECIES_SENTRET",
    "SPECIES_FURRET",
    "SPECIES_HOOTHOOT",
    "SPECIES_NOCTOWL",
    "SPECIES_LEDYBA",
    "SPECIES_LEDIAN",
    "SPECIES_SPINARAK",
    "SPECIES_ARIADOS",
    "SPECIES_CROBAT",
    "SPECIES_CHINCHOU",
    "SPECIES_LANTURN",
    "SPECIES_PICHU",
    "SPECIES_CLEFFA",
    "SPECIES_IGGLYBUFF",
    "SPECIES_TOGEPI",
    "SPECIES_TOGETIC",
    "SPECIES_NATU",
    "SPECIES_XATU",
    "SPECIES_MAREEP",
    "SPECIES_FLAAFFY",
    "SPECIES_AMPHAROS",
    "SPECIES_BELLOSSOM",
    "SPECIES_MARILL",
    "SPECIES_AZUMARILL",
    "SPECIES_SUDOWOODO",
    "SPECIES_POLITOED",
    "SPECIES_HOPPIP",
    "SPECIES_SKIPLOOM",
    "SPECIES_JUMPLUFF",
    "SPECIES_AIPOM",
    "SPECIES_SUNKERN",
    "SPECIES_SUNFLORA",
    "SPECIES_YANMA",
    "SPECIES_WOOPER",
    "SPECIES_QUAGSIRE",
    "SPECIES_ESPEON",
    "SPECIES_UMBREON",
    "SPECIES_MURKROW",
    "SPECIES_SLOWKING",
    "SPECIES_MISDREAVUS",
    "SPECIES_UNOWN",
    "SPECIES_WOBBUFFET",
    "SPECIES_GIRAFARIG",
    "SPECIES_PINECO",
    "SPECIES_FORRETRESS",
    "SPECIES_DUNSPARCE",
    "SPECIES_GLIGAR",
    "SPECIES_STEELIX",
    "SPECIES_SNUBBULL",
    "SPECIES_GRANBULL",
    "SPECIES_QWILFISH",
    "SPECIES_SCIZOR",
    "SPECIES_SHUCKLE",
    "SPECIES_HERACROSS",
    "SPECIES_SNEASEL",
    "SPECIES_TEDDIURSA",
    "SPECIES_URSARING",
    "SPECIES_SLUGMA",
    "SPECIES_MAGCARGO",
    "SPECIES_SWINUB",
    "SPECIES_PILOSWINE",
    "SPECIES_CORSOLA",
    "SPECIES_REMORAID",
    "SPECIES_OCTILLERY",
    "SPECIES_DELIBIRD",
    "SPECIES_MANTINE",
    "SPECIES_SKARMORY",
    "SPECIES_HOUNDOUR",
    "SPECIES_HOUNDOOM",
    "SPECIES_KINGDRA",
    "SPECIES_PHANPY",
    "SPECIES_DONPHAN",
    "SPECIES_PORYGON2",
    "SPECIES_STANTLER",
    "SPECIES_SMEARGLE",
    "SPECIES_TYROGUE",
    "SPECIES_HITMONTOP",
    "SPECIES_SMOOCHUM",
    "SPECIES_ELEKID",
    "SPECIES_MAGBY",
    "SPECIES_MILTANK",
    "SPECIES_BLISSEY",
    "SPECIES_RAIKOU",
    "SPECIES_ENTEI",
    "SPECIES_SUICUNE",
    "SPECIES_LARVITAR",
    "SPECIES_PUPITAR",
    "SPECIES_TYRANITAR",
    "SPECIES_LUGIA",
    "SPECIES_HO_OH",
    "SPECIES_CELEBI",
    "SPECIES_TREECKO",
    "SPECIES_GROVYLE",
    "SPECIES_SCEPTILE",
    "SPECIES_TORCHIC",
    "SPECIES_COMBUSKEN",
    "SPECIES_BLAZIKEN",
    "SPECIES_MUDKIP",
    "SPECIES_MARSHTOMP",
    "SPECIES_SWAMPERT",
    "SPECIES_POOCHYENA",
    "SPECIES_MIGHTYENA",
    "SPECIES_ZIGZAGOON",
    "SPECIES_LINOONE",
    "SPECIES_WURMPLE",
    "SPECIES_SILCOON",
    "SPECIES_BEAUTIFLY",
    "SPECIES_CASCOON",
    "SPECIES_DUSTOX",
    "SPECIES_LOTAD",
    "SPECIES_LOMBRE",
    "SPECIES_LUDICOLO",
    "SPECIES_SEEDOT",
    "SPECIES_NUZLEAF",
    "SPECIES_SHIFTRY",
    "SPECIES_TAILLOW",
    "SPECIES_SWELLOW",
    "SPECIES_WINGULL",
    "SPECIES_PELIPPER",
    "SPECIES_RALTS",
    "SPECIES_KIRLIA",
    "SPECIES_GARDEVOIR",
    "SPECIES_SURSKIT",
    "SPECIES_MASQUERAIN",
    "SPECIES_SHROOMISH",
    "SPECIES_BRELOOM",
    "SPECIES_SLAKOTH",
    "SPECIES_VIGOROTH",
    "SPECIES_SLAKING",
    "SPECIES_NINCADA",
    "SPECIES_NINJASK",
    "SPECIES_SHEDINJA",
    "SPECIES_WHISMUR",
    "SPECIES_LOUDRED",
    "SPECIES_EXPLOUD",
    "SPECIES_MAKUHITA",
    "SPECIES_HARIYAMA",
    "SPECIES_AZURILL",
    "SPECIES_NOSEPASS",
    "SPECIES_SKITTY",
    "SPECIES_DELCATTY",
    "SPECIES_SABLEYE",
    "SPECIES_MAWILE",
    "SPECIES_ARON",
    "SPECIES_LAIRON",
    "SPECIES_AGGRON",
    "SPECIES_MEDITITE",
    "SPECIES_MEDICHAM",
    "SPECIES_ELECTRIKE",
    "SPECIES_MANECTRIC",
    "SPECIES_PLUSLE",
    "SPECIES_MINUN",
    "SPECIES_VOLBEAT",
    "SPECIES_ILLUMISE",
    "SPECIES_ROSELIA",
    "SPECIES_GULPIN",
    "SPECIES_SWALOT",
    "SPECIES_CARVANHA",
    "SPECIES_SHARPEDO",
    "SPECIES_WAILMER",
    "SPECIES_WAILORD",
    "SPECIES_NUMEL",
    "SPECIES_CAMERUPT",
    "SPECIES_TORKOAL",
    "SPECIES_SPOINK",
    "SPECIES_GRUMPIG",
    "SPECIES_SPINDA",
    "SPECIES_TRAPINCH",
    "SPECIES_VIBRAVA",
    "SPECIES_FLYGON",
    "SPECIES_CACNEA",
    "SPECIES_CACTURNE",
    "SPECIES_SWABLU",
    "SPECIES_ALTARIA",
    "SPECIES_ZANGOOSE",
    "SPECIES_SEVIPER",
    "SPECIES_LUNATONE",
    "SPECIES_SOLROCK",
    "SPECIES_BARBOACH",
    "SPECIES_WHISCASH",
    "SPECIES_CORPHISH",
    "SPECIES_CRAWDAUNT",
    "SPECIES_BALTOY",
    "SPECIES_CLAYDOL",
    "SPECIES_LILEEP",
    "SPECIES_CRADILY",
    "SPECIES_ANORITH",
    "SPECIES_ARMALDO",
    "SPECIES_FEEBAS",
    "SPECIES_MILOTIC",
    "SPECIES_CASTFORM",
    "SPECIES_KECLEON",
    "SPECIES_SHUPPET",
    "SPECIES_BANETTE",
    "SPECIES_DUSKULL",
    "SPECIES_DUSCLOPS",
    "SPECIES_TROPIUS",
    "SPECIES_CHIMECHO",
    "SPECIES_ABSOL",
    "SPECIES_WYNAUT",
    "SPECIES_SNORUNT",
    "SPECIES_GLALIE",
    "SPECIES_SPHEAL",
    "SPECIES_SEALEO",
    "SPECIES_WALREIN",
    "SPECIES_CLAMPERL",
    "SPECIES_HUNTAIL",
    "SPECIES_GOREBYSS",
    "SPECIES_RELICANTH",
    "SPECIES_LUVDISC",
    "SPECIES_BAGON",
    "SPECIES_SHELGON",
    "SPECIES_SALAMENCE",
    "SPECIES_BELDUM",
    "SPECIES_METANG",
    "SPECIES_METAGROSS",
    "SPECIES_REGIROCK",
    "SPECIES_REGICE",
    "SPECIES_REGISTEEL",
    "SPECIES_LATIAS",
    "SPECIES_LATIOS",
    "SPECIES_KYOGRE",
    "SPECIES_GROUDON",
    "SPECIES_RAYQUAZA",
    "SPECIES_JIRACHI",
    "SPECIES_DEOXYS",
    "SPECIES_TURTWIG",
    "SPECIES_GROTLE",
    "SPECIES_TORTERRA",
    "SPECIES_CHIMCHAR",
    "SPECIES_MONFERNO",
    "SPECIES_INFERNAPE",
    "SPECIES_PIPLUP",
    "SPECIES_PRINPLUP",
    "SPECIES_EMPOLEON",
    "SPECIES_STARLY",
    "SPECIES_STARAVIA",
    "SPECIES_STARAPTOR",
    "SPECIES_BIDOOF",
    "SPECIES_BIBAREL",
    "SPECIES_KRICKETOT",
    "SPECIES_KRICKETUNE",
    "SPECIES_SHINX",
    "SPECIES_LUXIO",
    "SPECIES_LUXRAY",
    "SPECIES_BUDEW",
    "SPECIES_ROSERADE",
    "SPECIES_CRANIDOS",
    "SPECIES_RAMPARDOS",
    "SPECIES_SHIELDON",
    "SPECIES_BASTIODON",
    "SPECIES_BURMY",
    "SPECIES_WORMADAM",
    "SPECIES_MOTHIM",
    "SPECIES_COMBEE",
    "SPECIES_VESPIQUEN",
    "SPECIES_PACHIRISU",
    "SPECIES_BUIZEL",
    "SPECIES_FLOATZEL",
    "SPECIES_CHERUBI",
    "SPECIES_CHERRIM",
    "SPECIES_SHELLOS",
    "SPECIES_GASTRODON",
    "SPECIES_AMBIPOM",
    "SPECIES_DRIFLOON",
    "SPECIES_DRIFBLIM",
    "SPECIES_BUNEARY",
    "SPECIES_LOPUNNY",
    "SPECIES_MISMAGIUS",
    "SPECIES_HONCHKROW",
    "SPECIES_GLAMEOW",
    "SPECIES_PURUGLY",
    "SPECIES_CHINGLING",
    "SPECIES_STUNKY",
    "SPECIES_SKUNTANK",
    "SPECIES_BRONZOR",
    "SPECIES_BRONZONG",
    "SPECIES_BONSLY",
    "SPECIES_MIMEJR",
    "SPECIES_HAPPINY",
    "SPECIES_CHATOT",
    "SPECIES_SPIRITOMB",
    "SPECIES_GIBLE",
    "SPECIES_GABITE",
    "SPECIES_GARCHOMP",
    "SPECIES_MUNCHLAX",
    "SPECIES_RIOLU",
    "SPECIES_LUCARIO",
    "SPECIES_HIPPOPOTAS",
    "SPECIES_HIPPOWDON",
    "SPECIES_SKORUPI",
    "SPECIES_DRAPION",
    "SPECIES_CROAGUNK",
    "SPECIES_TOXICROAK",
    "SPECIES_CARNIVINE",
    "SPECIES_FINNEON",
    "SPECIES_LUMINEON",
    "SPECIES_MANTYKE",
    "SPECIES_SNOVER",
    "SPECIES_ABOMASNOW",
    "SPECIES_WEAVILE",
    "SPECIES_MAGNEZONE",
    "SPECIES_LICKILICKY",
    "SPECIES_RHYPERIOR",
    "SPECIES_TANGROWTH",
    "SPECIES_ELECTIVIRE",
    "SPECIES_MAGMORTAR",
    "SPECIES_TOGEKISS",
    "SPECIES_YANMEGA",
    "SPECIES_LEAFEON",
    "SPECIES_GLACEON",
    "SPECIES_GLISCOR",
    "SPECIES_MAMOSWINE",
    "SPECIES_PORYGON_Z",
    "SPECIES_GALLADE",
    "SPECIES_PROBOPASS",
    "SPECIES_DUSKNOIR",
    "SPECIES_FROSLASS",
    "SPECIES_ROTOM",
    "SPECIES_UXIE",
    "SPECIES_MESPRIT",
    "SPECIES_AZELF",
    "SPECIES_DIALGA",
    "SPECIES_PALKIA",
    "SPECIES_HEATRAN",
    "SPECIES_REGIGIGAS",
    "SPECIES_GIRATINA",
    "SPECIES_CRESSELIA",
    "SPECIES_PHIONE",
    "SPECIES_MANAPHY",
    "SPECIES_DARKRAI",
    "SPECIES_SHAYMIN",
    "SPECIES_ARCEUS",
    "SPECIES_EGG",
    "SPECIES_BAD_EGG",
};

#define GET_U32(var, file)    \
    var = fgetc(file);        \
    var |= fgetc(file) << 8;  \
    var |= fgetc(file) << 16; \
    var |= fgetc(file) << 24;

#define GET_ADDRESS(elementnum, file) \
    ((elementnum) * 4 + ftell(file))

#define GET_ADDRESS2(elementnum, file) \
    ((elementnum+1) * 4 + ftell(file))

#define GET_ADDRESS3(elementnum, file) \
    ((elementnum+2) * 4 + ftell(file))


int logaddresses[50] = {0};

void log_address(int address)
{
    int i;

    for (i = 0; i < sizeof(logaddresses) / sizeof(int); i++)
    {
        if (logaddresses[i] == address)
            return;
        else if (logaddresses[i] == 0)
        {
            logaddresses[i] = address;
            return;
        }
    }
}

int gLogging = 1;

int deleteaddress(int address) // deletes the address from the log so it won't be used again
{
    int i;
    int _hasBeenRemoved = 0;

    if (address)
    {
        for (i = 0; i < sizeof(logaddresses) / sizeof(int); i++)
        {
            if (logaddresses[i] == address)
            {
                _hasBeenRemoved = 1;
            }

            if (_hasBeenRemoved && i != (sizeof(logaddresses) / sizeof(int) - 1))
            {
                logaddresses[i] = logaddresses[i + 1];
            }
        }
    }

    return _hasBeenRemoved;
}

int main(int argc, char **argv)
{
    char sourcename[BUFF_SIZE], scriptname[BUFF_SIZE], basename[BUFF_SIZE];
    int elementnum, movetoa001 = 0, movetoa000 = 0, ignoreEOF = 0;
    FILE *source, *scriptfile;

    for (int i = 0; i <= 500; i++)
    {
        if (movetoa001 == 0)
        {
            sprintf(scriptname, "battle_scripts\\be_seq_rev\\%03d.s", i);
            sprintf(sourcename, "build/be_seq_rev/be_seq_rev_%03d", i);
            sprintf(basename, "be_seq_rev_%03d", i);
        }
        else if (movetoa000 == 0)
        {
            sprintf(scriptname, "battle_scripts\\sub_seq_rev\\%03d.s", i);
            sprintf(sourcename, "build/sub_seq_rev/sub_seq_rev_%03d", i);
            sprintf(basename, "sub_seq_rev_%03d", i);
        }
        else
        {
            sprintf(scriptname, "battle_scripts\\waza_seq_rev\\%03d.s", i);
            sprintf(sourcename, "build/waza_seq_rev/waza_seq_rev_%03d", i);
            sprintf(basename, "waza_seq_rev_%03d", i);
        }

        source = fopen(sourcename, "rb+");
        fseek(source, 0, SEEK_SET);

        scriptfile = fopen(scriptname, "w");

        fprintf(scriptfile, ".nds\n\n.include \"include/battlescriptcmd.s\"\n.include \"include/abilities.s\"\n.include \"include/itemnums.s\"\n.include \"include/monnums.s\"\n.include \"include/movenums.s\"\n\n.create \"%s\", 0\n\n%s:\n", sourcename, basename);

        elementnum = 0;

        gLogging = 1;

        while (elementnum != EOF || ignoreEOF == 1)
        {
            if (gLogging == 0) // make sure this is done first
                if (deleteaddress(ftell(source)))
                    fprintf(scriptfile, "_%04X:\n", ftell(source));

            GET_U32(elementnum, source);
            if (elementnum != EOF || ignoreEOF == 1)
            {
                ignoreEOF = 0;
                switch (elementnum)
                {
                case 0x0:
                    if (gLogging == 0) fprintf(scriptfile, "    startencounter\n");
                    break;
                case 0x1:
                    if (gLogging == 0) fprintf(scriptfile, "    pokemonencounter ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x2:
                    if (gLogging == 0) fprintf(scriptfile, "    pokemonslidein ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x3:
                    if (gLogging == 0) fprintf(scriptfile, "    pokemonappear ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x4:
                    if (gLogging == 0) fprintf(scriptfile, "    returnpokemon ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x5:
                    if (gLogging == 0) fprintf(scriptfile, "    deletepokemon ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x6:
                    if (gLogging == 0) fprintf(scriptfile, "    starttrainerencounter ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x7:
                    if (gLogging == 0) fprintf(scriptfile, "    throwpokeball ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x8:
                    if (gLogging == 0) fprintf(scriptfile, "    preparetrainerslide ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x9:
                    if (gLogging == 0) fprintf(scriptfile, "    trainerslidein ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xA:
                    if (gLogging == 0) fprintf(scriptfile, "    backgroundslidein\n");
                    break;
                case 0xB:
                    if (gLogging == 0) fprintf(scriptfile, "    hpgaugeslidein ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xC:
                    if (gLogging == 0) fprintf(scriptfile, "    hpgaugeslidewait ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xD:
                    if (gLogging == 0) fprintf(scriptfile, "    preparehpgaugeslide ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xE:
                    if (gLogging == 0) fprintf(scriptfile, "    waitmessage\n");
                    break;
                case 0xF:
                    if (gLogging == 0) fprintf(scriptfile, "    damagecalc\n");
                    break;
                case 0x10:
                    if (gLogging == 0) fprintf(scriptfile, "    damagecalc2\n");
                    break;
                case 0x11:
                    if (gLogging == 0) fprintf(scriptfile, "    printattackmessage\n");
                    break;
                case 0x12:
                    if (gLogging == 0) fprintf(scriptfile, "    printmessage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // msgid
                    GET_U32(elementnum, source);
                    if (elementnum == 0)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // just print the tag
                    }
                    else if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num1
                    }
                    else if (elementnum < 31)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num2
                    }
                    else if (elementnum < 52)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num3
                    }
                    else if (elementnum < 60)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\"\n", elementnum); // num4
                    }
                    else
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // num6
                    }
                    break;
                case 0x13:
                    if (gLogging == 0) fprintf(scriptfile, "    printmessage2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // msgid
                    GET_U32(elementnum, source);
                    if (elementnum == 0)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // just print the tag
                    }
                    else if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num1
                    }
                    else if (elementnum < 31)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num2
                    }
                    else if (elementnum < 52)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num3
                    }
                    else if (elementnum < 60)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\"\n", elementnum); // num4
                    }
                    else
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // num6
                    }
                    break;
                case 0x14:
                    if (gLogging == 0) fprintf(scriptfile, "    printpreparedmessage\n");
                    break;
                case 0x15:
                    if (gLogging == 0) fprintf(scriptfile, "    preparemessage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // msgid
                    GET_U32(elementnum, source);
                    if (elementnum == 0)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // just print the tag
                    }
                    else if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num1
                    }
                    else if (elementnum < 31)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num2
                    }
                    else if (elementnum < 52)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num3
                    }
                    else if (elementnum < 60)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\"\n", elementnum); // num4
                    }
                    else
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // num6
                    }
                    break;
                case 0x16:
                    if (gLogging == 0) fprintf(scriptfile, "    printmessagepassbattler ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // msgid
                    GET_U32(elementnum, source);
                    if (elementnum == 0)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // just print the tag
                    }
                    else if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num1
                    }
                    else if (elementnum < 31)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num2
                    }
                    else if (elementnum < 52)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\", \"NaN\"\n", elementnum); // num3
                    }
                    else if (elementnum < 60)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, \"NaN\", \"NaN\"\n", elementnum); // num4
                    }
                    else
                    {
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // tag
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // num6
                    }
                    break;
                case 0x17:
                    if (gLogging == 0) fprintf(scriptfile, "    seteffectprimary ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x18:
                    if (gLogging == 0) fprintf(scriptfile, "    seteffectsecondary ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // attacker
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]); // defender
                    break;
                case 0x19:
                    if (gLogging == 0) fprintf(scriptfile, "    monflicker ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x1A:
                    if (gLogging == 0) fprintf(scriptfile, "    datahpupdate ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x1B:
                    if (gLogging == 0) fprintf(scriptfile, "    healthbarupdate ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x1C:
                    if (gLogging == 0) fprintf(scriptfile, "    tryfaintmon ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x1D:
                    if (gLogging == 0) fprintf(scriptfile, "    dofaintanimation\n");
                    break;
                case 0x1E:
                    if (gLogging == 0) fprintf(scriptfile, "    wait ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x1F:
                    if (gLogging == 0) fprintf(scriptfile, "    playse ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x20:
                    if (gLogging == 0) fprintf(scriptfile, "    if ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", IfConditions[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", BattleVars[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x21:
                    if (gLogging == 0) fprintf(scriptfile, "    ifmonstat ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", IfConditions[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", MonDataFields[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x22:
                    if (gLogging == 0) fprintf(scriptfile, "    fadeout\n");
                    break;
                case 0x23:
                    if (gLogging == 0) fprintf(scriptfile, "    jumptosubseq ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x24:
                    if (gLogging == 0) fprintf(scriptfile, "    jumptocurmoveeffectscript\n");
                    break;
                case 0x25:
                    if (gLogging == 0) fprintf(scriptfile, "    jumptoeffectscript ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x26:
                    if (gLogging == 0) fprintf(scriptfile, "    critcalc\n");
                    break;
                case 0x27:
                    if (gLogging == 0) fprintf(scriptfile, "    shouldgetexp ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0x28:
                    if (gLogging == 0) fprintf(scriptfile, "    initexpget\n");
                    break;
                case 0x29:
                    if (gLogging == 0) fprintf(scriptfile, "    getexp\n");
                    break;
                case 0x2A:
                    if (gLogging == 0) fprintf(scriptfile, "    getexploop ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0x2B:
                    if (gLogging == 0) fprintf(scriptfile, "    showmonlist\n");
                    break;
                case 0x2C:
                    if (gLogging == 0) fprintf(scriptfile, "    waitformonselection\n");
                    break;
                case 0x2D:
                    if (gLogging == 0) fprintf(scriptfile, "    switchindataupdate ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x2E:
                    if (gLogging == 0) fprintf(scriptfile, "    jumpifcantswitch ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0x2F:
                    if (gLogging == 0) fprintf(scriptfile, "    initcapture ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x30:
                    if (gLogging == 0) fprintf(scriptfile, "    capturemon\n");
                    break;
                case 0x31:
                    if (gLogging == 0) fprintf(scriptfile, "    setmultihit ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%d, ", elementnum); // hits
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // num
                    break;
                case 0x32:
                    if (gLogging == 0) fprintf(scriptfile, "    changevar ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", VarOperators[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", BattleVars[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    ignoreEOF = 1;
                    break;
                case 0x33:
                    if (gLogging == 0) fprintf(scriptfile, "    statbuffchange ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS3(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS3(elementnum, source)); // address1
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS2(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS2(elementnum, source)); // address2
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address3
                    break;
                case 0x34:
                    if (gLogging == 0) fprintf(scriptfile, "    changevartomonvalue ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", VarOperators[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x35:
                    if (gLogging == 0) fprintf(scriptfile, "    clearstatus2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x36:
                    if (gLogging == 0) fprintf(scriptfile, "    togglevanish ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x37:
                    if (gLogging == 0) fprintf(scriptfile, "    abilitycheck ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Abilities[elementnum]); // ability
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0x38:
                    if (gLogging == 0) fprintf(scriptfile, "    random ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // range
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // startingnum
                    break;
                case 0x39:
                    if (gLogging == 0) fprintf(scriptfile, "    changevar2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", VarOperators[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", BattleVars[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", BattleVars[elementnum]);
                    break;
                case 0x3A:
                    if (gLogging == 0) fprintf(scriptfile, "    changevartomonvalue2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", VarOperators[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", BattleVars[elementnum]);
                    break;
                case 0x3B:
                    if (gLogging == 0) fprintf(scriptfile, "    goto ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x3C:
                    if (gLogging == 0) fprintf(scriptfile, "    gotosubscript ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x3D:
                    if (gLogging == 0) fprintf(scriptfile, "    gotosubscript2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x3E:
                    if (gLogging == 0) fprintf(scriptfile, "    checkifchatot\n");
                    break;
                case 0x3F:
                    if (gLogging == 0) fprintf(scriptfile, "    sethaze\n");
                    break;
                case 0x40:
                    if (gLogging == 0) fprintf(scriptfile, "    setsomeflag ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x41:
                    if (gLogging == 0) fprintf(scriptfile, "    clearsomeflag ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x42:
                    if (gLogging == 0) fprintf(scriptfile, "    setstatusicon ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x43:
                    if (gLogging == 0) fprintf(scriptfile, "    trainermessage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x44:
                    if (gLogging == 0) fprintf(scriptfile, "    calcmoney\n");
                    break;
                case 0x45:
                    if (gLogging == 0) fprintf(scriptfile, "    setstatus2effect ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x46:
                    if (gLogging == 0) fprintf(scriptfile, "    setstatus2effect2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x47:
                    if (gLogging == 0) fprintf(scriptfile, "    setstatus2effect3 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x48:
                    if (gLogging == 0) fprintf(scriptfile, "    returnmessage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x49:
                    if (gLogging == 0) fprintf(scriptfile, "    sentoutmessage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x4A:
                    if (gLogging == 0) fprintf(scriptfile, "    encountermessage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x4B:
                    if (gLogging == 0) fprintf(scriptfile, "    encountermessage2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x4C:
                    if (gLogging == 0) fprintf(scriptfile, "    trainermessage2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x4D:
                    if (gLogging == 0) fprintf(scriptfile, "    tryconversion ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x4E:
                    if (gLogging == 0) fprintf(scriptfile, "    if2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", IfConditions[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", BattleVars[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x4F:
                    if (gLogging == 0) fprintf(scriptfile, "    ifmonstat2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", IfConditions[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", BattleVars[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x50:
                    if (gLogging == 0) fprintf(scriptfile, "    dopayday\n");
                    break;
                case 0x51:
                    if (gLogging == 0) fprintf(scriptfile, "    setlightscreen ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x52:
                    if (gLogging == 0) fprintf(scriptfile, "    setreflect ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x53:
                    if (gLogging == 0) fprintf(scriptfile, "    setmist ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x54:
                    if (gLogging == 0) fprintf(scriptfile, "    tryonehitko\n");
                    break;
                case 0x55:
                    if (gLogging == 0) fprintf(scriptfile, "    damagediv ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x56:
                    if (gLogging == 0) fprintf(scriptfile, "    damagediv2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x57:
                    if (gLogging == 0) fprintf(scriptfile, "    trymimic ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x58:
                    if (gLogging == 0) fprintf(scriptfile, "    metronome\n");
                    break;
                case 0x59:
                    if (gLogging == 0) fprintf(scriptfile, "    trydisable ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x5A:
                    if (gLogging == 0) fprintf(scriptfile, "    counter\n");
                    break;
                case 0x5B:
                    if (gLogging == 0) fprintf(scriptfile, "    mirrorcoat\n");
                    break;
                case 0x5C:
                    if (gLogging == 0) fprintf(scriptfile, "    tryencore ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x5D:
                    if (gLogging == 0) fprintf(scriptfile, "    tryconversion2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x5E:
                    if (gLogging == 0) fprintf(scriptfile, "    trysketch ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x5F:
                    if (gLogging == 0) fprintf(scriptfile, "    trysleeptalk ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x60:
                    if (gLogging == 0) fprintf(scriptfile, "    flaildamagecalc\n");
                    break;
                case 0x61:
                    if (gLogging == 0) fprintf(scriptfile, "    tryspite ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x62:
                    if (gLogging == 0) fprintf(scriptfile, "    healbell\n");
                    break;
                case 0x63:
                    if (gLogging == 0) fprintf(scriptfile, "    trythief ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS2(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS2(elementnum, source)); // address1
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address2
                    break;
                case 0x64:
                    if (gLogging == 0) fprintf(scriptfile, "    willprotectwork ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x65:
                    if (gLogging == 0) fprintf(scriptfile, "    trysubstitute ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x66:
                    if (gLogging == 0) fprintf(scriptfile, "    trywhirlwind ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x67:
                    if (gLogging == 0) fprintf(scriptfile, "    transform\n");
                    break;
                case 0x68:
                    if (gLogging == 0) fprintf(scriptfile, "    tryspikes ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x69:
                    if (gLogging == 0) fprintf(scriptfile, "    checkspikes ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x6A:
                    if (gLogging == 0) fprintf(scriptfile, "    tryperishsong ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x6B:
                    if (gLogging == 0) fprintf(scriptfile, "    orderbattlersbyspeed ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x6C:
                    if (gLogging == 0) fprintf(scriptfile, "    exitloopatvalue ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x6D:
                    if (gLogging == 0) fprintf(scriptfile, "    weatherdamagecalc ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0x6E:
                    if (gLogging == 0) fprintf(scriptfile, "    rolloutdamagecalc\n");
                    break;
                case 0x6F:
                    if (gLogging == 0) fprintf(scriptfile, "    furycutterdamagecalc\n");
                    break;
                case 0x70:
                    if (gLogging == 0) fprintf(scriptfile, "    tryattract ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x71:
                    if (gLogging == 0) fprintf(scriptfile, "    trysafeguard ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x72:
                    if (gLogging == 0) fprintf(scriptfile, "    trypresent ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x73:
                    if (gLogging == 0) fprintf(scriptfile, "    magnitudedamagecalc\n");
                    break;
                case 0x74:
                    if (gLogging == 0) fprintf(scriptfile, "    tryswitchinmon ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x75:
                    if (gLogging == 0) fprintf(scriptfile, "    dorapidspineffect\n");
                    break;
                case 0x76:
                    if (gLogging == 0) fprintf(scriptfile, "    changehprecoverybasedonweather\n");
                    break;
                case 0x77:
                    if (gLogging == 0) fprintf(scriptfile, "    hiddenpowerdamagecalc\n");
                    break;
                case 0x78:
                    if (gLogging == 0) fprintf(scriptfile, "    dopsychup\n");
                    break;
                case 0x79:
                    if (gLogging == 0) fprintf(scriptfile, "    tryfuturesight ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x7A:
                    if (gLogging == 0) fprintf(scriptfile, "    checkhitrate ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // attacker
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // defender
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Moves[elementnum]); // move
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0x7B:
                    if (gLogging == 0) fprintf(scriptfile, "    tryteleport ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x7C:
                    if (gLogging == 0) fprintf(scriptfile, "    beatupdamagecalc\n");
                    break;
                case 0x7D:
                    if (gLogging == 0) fprintf(scriptfile, "    dofollowme\n");
                    break;
                case 0x7E:
                    if (gLogging == 0) fprintf(scriptfile, "    tryhelpinghand ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x7F:
                    if (gLogging == 0) fprintf(scriptfile, "    trytrick ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS2(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS2(elementnum, source)); // address1
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address2
                    break;
                case 0x80:
                    if (gLogging == 0) fprintf(scriptfile, "    trywish ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x81:
                    if (gLogging == 0) fprintf(scriptfile, "    tryassist ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x82:
                    if (gLogging == 0) fprintf(scriptfile, "    trymagiccoat ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x83:
                    if (gLogging == 0) fprintf(scriptfile, "    trymagiccoat2\n");
                    break;
                case 0x84:
                    if (gLogging == 0) fprintf(scriptfile, "    dorevenge\n");
                    break;
                case 0x85:
                    if (gLogging == 0) fprintf(scriptfile, "    trybreakscreens ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x86:
                    if (gLogging == 0) fprintf(scriptfile, "    tryyawn ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x87:
                    if (gLogging == 0) fprintf(scriptfile, "    tryknockitemoff ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x88:
                    if (gLogging == 0) fprintf(scriptfile, "    eruptiondamagecalc\n");
                    break;
                case 0x89:
                    if (gLogging == 0) fprintf(scriptfile, "    tryimprison ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x8A:
                    if (gLogging == 0) fprintf(scriptfile, "    trygrudge ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x8B:
                    if (gLogging == 0) fprintf(scriptfile, "    trysnatch ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x8C:
                    if (gLogging == 0) fprintf(scriptfile, "    lowkickdamagecalc\n");
                    break;
                case 0x8D:
                    if (gLogging == 0) fprintf(scriptfile, "    weatherballdamagecalc\n");
                    break;
                case 0x8E:
                    if (gLogging == 0) fprintf(scriptfile, "    trypursuit ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x8F:
                    if (gLogging == 0) fprintf(scriptfile, "    typecheck\n");
                    break;
                case 0x90:
                    if (gLogging == 0) fprintf(scriptfile, "    checkoneturnflag ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // flag
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // value
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x91:
                    if (gLogging == 0) fprintf(scriptfile, "    setoneturnflag ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // flag
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // value
                    break;
                case 0x92:
                    if (gLogging == 0) fprintf(scriptfile, "    gyroballdamagecalc\n");
                    break;
                case 0x93:
                    if (gLogging == 0) fprintf(scriptfile, "    metalburstdamagecalc ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x94:
                    if (gLogging == 0) fprintf(scriptfile, "    paybackdamagecalc\n");
                    break;
                case 0x95:
                    if (gLogging == 0) fprintf(scriptfile, "    trumpcarddamagecalc\n");
                    break;
                case 0x96:
                    if (gLogging == 0) fprintf(scriptfile, "    wringoutdamagecalc\n");
                    break;
                case 0x97:
                    if (gLogging == 0) fprintf(scriptfile, "    trymefirst ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x98:
                    if (gLogging == 0) fprintf(scriptfile, "    trycopycat ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x99:
                    if (gLogging == 0) fprintf(scriptfile, "    punishmentdamagecalc\n");
                    break;
                case 0x9A:
                    if (gLogging == 0) fprintf(scriptfile, "    trysuckerpunch ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x9B:
                    if (gLogging == 0) fprintf(scriptfile, "    checkbattlercondition ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // mode
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0x9C:
                    if (gLogging == 0) fprintf(scriptfile, "    tryfeint ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x9D:
                    if (gLogging == 0) fprintf(scriptfile, "    trypsychoshift ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x9E:
                    if (gLogging == 0) fprintf(scriptfile, "    trylastresort ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x9F:
                    if (gLogging == 0) fprintf(scriptfile, "    trytoxicspikes ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xA0:
                    if (gLogging == 0) fprintf(scriptfile, "    checktoxicspikes ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xA1:
                    if (gLogging == 0) fprintf(scriptfile, "    moldbreakerabilitycheck ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Abilities[elementnum]); // ability
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xA2:
                    if (gLogging == 0) fprintf(scriptfile, "    checkbattlersequal ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler2
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address
                    break;
                case 0xA3:
                    if (gLogging == 0) fprintf(scriptfile, "    trypickup\n");
                    break;
                case 0xA4:
                    if (gLogging == 0) fprintf(scriptfile, "    dotrickroom\n");
                    break;
                case 0xA5:
                    if (gLogging == 0) fprintf(scriptfile, "    checkmovefinished ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xA6:
                    if (gLogging == 0) fprintf(scriptfile, "    checkitemeffect ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xA7:
                    if (gLogging == 0) fprintf(scriptfile, "    getitemeffect ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xA8:
                    if (gLogging == 0) fprintf(scriptfile, "    getitempower ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", BattleVars[elementnum]);
                    break;
                case 0xA9:
                    if (gLogging == 0) fprintf(scriptfile, "    trycamouflage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xAA:
                    if (gLogging == 0) fprintf(scriptfile, "    donaturepower\n");
                    break;
                case 0xAB:
                    if (gLogging == 0) fprintf(scriptfile, "    dosecretpower\n");
                    break;
                case 0xAC:
                    if (gLogging == 0) fprintf(scriptfile, "    trynaturalgift ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xAD:
                    if (gLogging == 0) fprintf(scriptfile, "    trypluck ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS2(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS2(elementnum, source)); // address1
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address2
                    break;
                case 0xAE:
                    if (gLogging == 0) fprintf(scriptfile, "    tryfling ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xAF:
                    if (gLogging == 0) fprintf(scriptfile, "    yesnobox ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xB0:
                    if (gLogging == 0) fprintf(scriptfile, "    yesnowait ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS2(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS2(elementnum, source)); // address1
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address2
                    break;
                case 0xB1:
                    if (gLogging == 0) fprintf(scriptfile, "    monlist\n");
                    break;
                case 0xB2:
                    if (gLogging == 0) fprintf(scriptfile, "    monlistwait ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source)); // address2
                    break;
                case 0xB3:
                    if (gLogging == 0) fprintf(scriptfile, "    setbattleresult\n");
                    break;
                case 0xB4:
                    if (gLogging == 0) fprintf(scriptfile, "    checkstealthrock ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xB5:
                    if (gLogging == 0) fprintf(scriptfile, "    checkeffectactivation ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xB6:
                    if (gLogging == 0) fprintf(scriptfile, "    checkchatteractivation ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xB7:
                    if (gLogging == 0) fprintf(scriptfile, "    getmoveparameter ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xB8:
                    if (gLogging == 0) fprintf(scriptfile, "    mosaic ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]); // battler
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // wait
                    break;
                case 0xB9:
                    if (gLogging == 0) fprintf(scriptfile, "    changeform ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xBA:
                    if (gLogging == 0) fprintf(scriptfile, "    changebackground\n");
                    break;
                case 0xBB:
                    if (gLogging == 0) fprintf(scriptfile, "    recoverstatus ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xBC:
                    if (gLogging == 0) fprintf(scriptfile, "    tryescape ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xBD:
                    if (gLogging == 0) fprintf(scriptfile, "    initstartballguage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xBE:
                    if (gLogging == 0) fprintf(scriptfile, "    deletestartballguage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xBF:
                    if (gLogging == 0) fprintf(scriptfile, "    initballguage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xC0:
                    if (gLogging == 0) fprintf(scriptfile, "    deleteballguage ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xC1:
                    if (gLogging == 0) fprintf(scriptfile, "    loadballgfx\n");
                    break;
                case 0xC2:
                    if (gLogging == 0) fprintf(scriptfile, "    deleteballgfx\n");
                    break;
                case 0xC3:
                    if (gLogging == 0) fprintf(scriptfile, "    incrementgamestat ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xC4:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_C4 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xC5:
                    if (gLogging == 0) fprintf(scriptfile, "    checkifcurrentmovehits ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xC6:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_C6 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xC7:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_C7 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xC8:
                    if (gLogging == 0) fprintf(scriptfile, "    checkwipeout ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xC9:
                    if (gLogging == 0) fprintf(scriptfile, "    tryacupressure ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xCA:
                    if (gLogging == 0) fprintf(scriptfile, "    removeitem ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xCB:
                    if (gLogging == 0) fprintf(scriptfile, "    tryrecycle ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xCC:
                    if (gLogging == 0) fprintf(scriptfile, "    itemeffectcheckonhit ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xCD:
                    if (gLogging == 0) fprintf(scriptfile, "    battleresultmessage\n");
                    break;
                case 0xCE:
                    if (gLogging == 0) fprintf(scriptfile, "    runawaymessage\n");
                    break;
                case 0xCF:
                    if (gLogging == 0) fprintf(scriptfile, "    giveupmessage\n");
                    break;
                case 0xD0:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_D0_checkhpsomething ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xD1:
                    if (gLogging == 0) fprintf(scriptfile, "    trynaturalcure ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xD2:
                    if (gLogging == 0) fprintf(scriptfile, "    checknostatus ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xD3:
                    if (gLogging == 0) fprintf(scriptfile, "    checkcloudnine ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xD4:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_D4 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xD5:
                    if (gLogging == 0) fprintf(scriptfile, "    checkwhenitemmakesmovehit ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xD6:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_D6 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xD7:
                    if (gLogging == 0) fprintf(scriptfile, "    playmovesoundeffect ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xD8:
                    if (gLogging == 0) fprintf(scriptfile, "    playsong ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Battlers[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0xD9:
                    if (gLogging == 0) fprintf(scriptfile, "    checkifsafariencounterdone ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xDA: // endscript is D6 in diamond
/*                    if (gLogging == 0) fprintf(scriptfile, "    waitwithoutbuttonpress ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xDB:
                    if (gLogging == 0) fprintf(scriptfile, "    checkmovetypematches ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Types[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0xDC:
                    if (gLogging == 0) fprintf(scriptfile, "    getdatafrompersonalnarc ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", Pokemon[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s, ", BattleVars[elementnum]);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xDD:
                    if (gLogging == 0) fprintf(scriptfile, "    refreshmondata ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xDE:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_DE ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xDF:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_DF ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0xE0:*/
                    if (gLogging == 0) fprintf(scriptfile, "    endscript\n");
                    break;
                case 0xDB: // new pbr command, appears to have one parameter
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_DB ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%s\n", Battlers[elementnum]);
                    break;
                case 0xDC: // new pbr command, unused (?)
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_DC\n");
                    break;
                case 0xDD: // new pbr command
                    if (gLogging == 0) fprintf(scriptfile, "    cmd_DD ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                default:
                    if (gLogging == 0) fprintf(scriptfile, "    //invalid command 0x%2X!\n", elementnum);
                    break;
                }
            }
            else if (gLogging == 1)
            {
                gLogging = 0;
                fseek(source, 0, SEEK_SET);
                elementnum = 0;
            }
            else
                gLogging = 1;
        }
        //printf("%x\n", elementnum);

        fprintf(scriptfile, "\n.close\n");

        fclose(source);
        fclose(scriptfile);

        if (i == 276 && movetoa001 == 0) // start with be_seq
        {
            i = -1;
            movetoa001 = 1; // move to sub_seq
        }
        else if (i == 292 && movetoa000 == 0)
        {
            i = -1;
            movetoa000 = 1; // end with waza_seq
        }
    }

    return 0;
}
