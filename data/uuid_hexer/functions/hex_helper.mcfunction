# Clear data
scoreboard players set .value UUIDHexer 0

# Get the value associated with the 0th bit
execute store result score .temp UUIDHexer run data get storage uuid_hexer Hex.BinaryArray[0]
scoreboard players operation .temp UUIDHexer *= .8 UUIDHexer
scoreboard players operation .value UUIDHexer += .temp UUIDHexer

# Get the value associated with the 1st bit
execute store result score .temp UUIDHexer run data get storage uuid_hexer Hex.BinaryArray[1]
scoreboard players operation .temp UUIDHexer *= .4 UUIDHexer
scoreboard players operation .value UUIDHexer += .temp UUIDHexer

# Get the value associated with the 2nd bit
execute store result score .temp UUIDHexer run data get storage uuid_hexer Hex.BinaryArray[2]
scoreboard players operation .temp UUIDHexer *= .2 UUIDHexer
scoreboard players operation .value UUIDHexer += .temp UUIDHexer

# Get the value associated with the 3rd bit
execute store result score .temp UUIDHexer run data get storage uuid_hexer Hex.BinaryArray[3]
scoreboard players operation .value UUIDHexer += .temp UUIDHexer

# Save the corresponding hexadecimal character
execute store result storage uuid_hexer Hex.Char int 1 run scoreboard players get .value UUIDHexer
function uuid_hexer:hex_helper2 with storage uuid_hexer Hex

# Remove the first 4 bits
data remove storage uuid_hexer Hex.BinaryArray[0]
data remove storage uuid_hexer Hex.BinaryArray[0]
data remove storage uuid_hexer Hex.BinaryArray[0]
data remove storage uuid_hexer Hex.BinaryArray[0]

# Repeat for all 128 bits (32 groups of 4)
scoreboard players remove .count UUIDHexer 1
execute unless score .count UUIDHexer matches 0 run function uuid_hexer:hex_helper