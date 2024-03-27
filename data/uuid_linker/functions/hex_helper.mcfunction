# Clear data
scoreboard players set .value UUIDLinker 0

# Get the value associated with the 0th bit
execute store result score .temp UUIDLinker run data get storage uuid_linker Hex.BinaryArray[0]
scoreboard players operation .temp UUIDLinker *= .8 UUIDLinker
scoreboard players operation .value UUIDLinker += .temp UUIDLinker

# Get the value associated with the 1st bit
execute store result score .temp UUIDLinker run data get storage uuid_linker Hex.BinaryArray[1]
scoreboard players operation .temp UUIDLinker *= .4 UUIDLinker
scoreboard players operation .value UUIDLinker += .temp UUIDLinker

# Get the value associated with the 2nd bit
execute store result score .temp UUIDLinker run data get storage uuid_linker Hex.BinaryArray[2]
scoreboard players operation .temp UUIDLinker *= .2 UUIDLinker
scoreboard players operation .value UUIDLinker += .temp UUIDLinker

# Get the value associated with the 3rd bit
execute store result score .temp UUIDLinker run data get storage uuid_linker Hex.BinaryArray[3]
scoreboard players operation .value UUIDLinker += .temp UUIDLinker

# Save the corresponding hexadecimal character
execute store result storage uuid_linker Hex.Char int 1 run scoreboard players get .value UUIDLinker
function uuid_linker:hex_helper2 with storage uuid_linker Hex

# Remove the first 4 bits
data remove storage uuid_linker Hex.BinaryArray[0]
data remove storage uuid_linker Hex.BinaryArray[0]
data remove storage uuid_linker Hex.BinaryArray[0]
data remove storage uuid_linker Hex.BinaryArray[0]

# Repeat for all 128 bits (32 groups of 4)
scoreboard players remove .count UUIDLinker 1
execute unless score .count UUIDLinker matches 0 run function uuid_linker:hex_helper