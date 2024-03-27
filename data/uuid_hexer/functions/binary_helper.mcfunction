# Math
scoreboard players operation .remainder UUIDHexer = .quotient UUIDHexer

# Get quotient and remainder
scoreboard players operation .quotient UUIDHexer /= .2 UUIDHexer
scoreboard players operation .remainder UUIDHexer %= .2 UUIDHexer

# Save the bit
execute store result storage uuid_hexer Binary.remainder int 1 run scoreboard players get .remainder UUIDHexer
data modify storage uuid_hexer Binary.Array prepend from storage uuid_hexer Binary.remainder

# Repeat for all 32 bits
scoreboard players remove .count UUIDHexer 1
execute unless score .count UUIDHexer matches 0 run function uuid_hexer:binary_helper