# Copy int to scoreboard
$scoreboard players set .INT32 UUIDHexer $(INT32)

# Math
scoreboard players operation .quotient UUIDHexer = .INT32 UUIDHexer

# Put in 8bit 2s compliment if negative
execute if score .INT32 UUIDHexer matches ..0 run scoreboard players operation .quotient UUIDHexer += .MAX UUIDHexer
execute if score .INT32 UUIDHexer matches ..0 run scoreboard players add .quotient UUIDHexer 1

# Get 32 bit representation of int (bit array)
scoreboard players set .count UUIDHexer 32
function uuid_hexer:binary_helper

# Set first bit to 1 for 8bit 2s compliment if negative
execute if score .INT32 UUIDHexer matches ..0 run data modify storage minecraft:uuid_hexer Binary.Array[0] set value 1