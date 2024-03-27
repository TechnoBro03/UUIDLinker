# Copy int to scoreboard
$scoreboard players set .INT32 UUIDLinker $(INT32)

# Math
scoreboard players operation .quotient UUIDLinker = .INT32 UUIDLinker

# Put in 8bit 2s compliment if negative
execute if score .INT32 UUIDLinker matches ..0 run scoreboard players operation .quotient UUIDLinker += .MAX UUIDLinker
execute if score .INT32 UUIDLinker matches ..0 run scoreboard players add .quotient UUIDLinker 1

# Get 32 bit representation of int (bit array)
scoreboard players set .count UUIDLinker 32
function uuid_linker:binary_helper

# Set first bit to 1 for 8bit 2s compliment if negative
execute if score .INT32 UUIDLinker matches ..0 run data modify storage minecraft:uuid_linker Binary.Array[0] set value 1