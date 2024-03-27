# Math
scoreboard players operation .remainder UUIDLinker = .quotient UUIDLinker

# Get quotient and remainder
scoreboard players operation .quotient UUIDLinker /= .2 UUIDLinker
scoreboard players operation .remainder UUIDLinker %= .2 UUIDLinker

# Save the bit
execute store result storage uuid_linker Binary.remainder int 1 run scoreboard players get .remainder UUIDLinker
data modify storage uuid_linker Binary.Array prepend from storage uuid_linker Binary.remainder

# Repeat for all 32 bits
scoreboard players remove .count UUIDLinker 1
execute unless score .count UUIDLinker matches 0 run function uuid_linker:internal/binary_helper