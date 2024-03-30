# Copy int to scoreboard
execute store result score .INT32 UUIDLinker run data get storage uuid_linker Temp.IntArray[-1]

# Initialize scoreboard
scoreboard players operation .quotient UUIDLinker = .INT32 UUIDLinker

# Hex signed 2's complement if negative
execute if score .INT32 UUIDLinker < .0 UUIDLinker run scoreboard players operation .quotient UUIDLinker += .MAX UUIDLinker
execute if score .INT32 UUIDLinker < .0 UUIDLinker run scoreboard players add .quotient UUIDLinker 1

# Int32 -> CharArray[8]
function uuid_linker:internal/internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper
function uuid_linker:internal/hex/itohex_helper

# Hex signed 2's complement if negative
execute if score .INT32 UUIDLinker < .0 UUIDLinker run scoreboard players operation .remainder UUIDLinker += .8 UUIDLinker
# Store remainder
execute store result storage uuid_linker Temp.Remainder int 1 run scoreboard players get .remainder UUIDLinker
# Remove CharArray[0]
data remove storage uuid_linker Temp.CharArray[0]
# Preppend new hex char
function uuid_linker:internal/hex/prepend_char with storage uuid_linker Temp

data remove storage uuid_linker Temp.IntArray[-1]