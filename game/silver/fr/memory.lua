CORE_FILES = {"gsc"}

RAM_SCREEN = 0x8800
RAM_IN_BATTLE = 0xd116
RAM_TEXT = 0xc3a0
RAM_OVERWORLD_MAP = 0xc700
RAM_CURRENT_ENEMY_HEALTH = 0xd0ff
RAM_PLAYER_NAME = 0xd1a3
RAM_MOM_NAME = 0xd1ae
RAM_RIVAL_NAME = 0xd1b9
RAM_RED_NAME = 0xd1c4
RAM_GREEN_NAME = 0xd1cf
RAM_BADGES = 0xd57c
RAM_MAP_GROUP = 0xda00
RAM_MAP_NUMBER = 0xda01
RAM_PLAYER_Y = 0xda02
RAM_PLAYER_X = 0xda03
RAM_MAP_HEADER = 0xd086
RAM_MAP_HEIGHT = RAM_MAP_HEADER + 1
RAM_MAP_WIDTH = RAM_MAP_HEADER + 2
RAM_MAP_SCRIPT_HEADER_BANK = RAM_MAP_HEADER+6
RAM_MAP_EVENT_HEADER_POINTER = RAM_MAP_HEADER+9
RAM_MAP_CONNECTIONS = RAM_MAP_HEADER+11
RAM_MAP_NORTH_CONNECTION = RAM_MAP_CONNECTIONS+1
RAM_MAP_NORTH_CONNECTION_START_POINTER = RAM_MAP_NORTH_CONNECTION + 4
RAM_MAP_NORTH_CONNECTION_SIZE = RAM_MAP_NORTH_CONNECTION + 6
RAM_MAP_SOUTH_CONNECTION = RAM_MAP_CONNECTIONS+1+(1*12)
RAM_MAP_SOUTH_CONNECTION_START_POINTER = RAM_MAP_SOUTH_CONNECTION + 4
RAM_MAP_SOUTH_CONNECTION_SIZE = RAM_MAP_SOUTH_CONNECTION + 6
RAM_MAP_WEST_CONNECTION = RAM_MAP_CONNECTIONS+1+(2*12)
RAM_MAP_WEST_CONNECTION_START_POINTER = RAM_MAP_WEST_CONNECTION + 4
RAM_MAP_WEST_CONNECTION_SIZE = RAM_MAP_WEST_CONNECTION + 6
RAM_MAP_EAST_CONNECTION = RAM_MAP_CONNECTIONS+1+(3*12)
RAM_MAP_EAST_CONNECTION_START_POINTER = RAM_MAP_EAST_CONNECTION + 4
RAM_MAP_EAST_CONNECTION_SIZE = RAM_MAP_EAST_CONNECTION + 6
RAM_MAP_OBJECTS = 0xd445
RAM_LIVE_OBJECTS = RAM_MAP_OBJECTS+0x100
RAM_COLLISION_BANK = 0xd0c8
RAM_COLLISION_ADDR = 0xd0c9
RAM_OBJECT_STRUCTS = 0xd225
RAM_KEYBOARD_X = 0xc538
RAM_KEYBOARD_Y = 0xc539
RAM_UNOWN_PUZZLE = 0xc5d0
RAM_PUZZLE_CURSOR = 0xce65
ROM_FOOTSTEP_FUNCTION = 0xd4c1
ROM_TILE_FLAGS = 0xfb4be
KEYBOARD_STRING = "EFF   FIN"
KEYBOARD_UPPER = {
{"A", "B", "C", "D", "E", "F", "G", "H", "I"},
{"J", "K", "L", "M", "N", "O", "P", "Q", "R"},
{"S", "T", "U", "V", "W", "X", "Y", "Z", "ESPACE"},
{"-", "?", "!", "/", ".", ",", "ESPACE", "ESPACE", "ESPACE"},
{"min", "min", "min", "EFF", "EFF", "EFF", "FIN", "FIN", "FIN"}
}

KEYBOARD_LOWER = {
{"a", "b", "c", "d", "e", "f", "g", "h", "i"},
{"j", "k", "l", "m", "n", "o", "p", "q", "r"},
{"s", "t", "u", "v", "w", "x", "y", "z", "espace"},
{"×", "(", ")", ":", ";", "[", "]", "PK", "MN"},
{"MAJ", "MAJ", "MAJ", "EFF", "EFF", "EFF", "FIN", "FIN", "FIN"}
}
KEYBOARD_UPPER_STRING = "MAJ"
