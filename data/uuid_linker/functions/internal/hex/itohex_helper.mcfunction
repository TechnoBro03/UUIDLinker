scoreboard players operation .remainder UUIDLinker = .quotient UUIDLinker
# Calculate quotient and remainder
scoreboard players operation .quotient UUIDLinker /= .16 UUIDLinker
scoreboard players operation .remainder UUIDLinker %= .16 UUIDLinker
# Store remainder
execute store result storage uuid_linker Temp.Remainder int 1 run scoreboard players get .remainder UUIDLinker
# Prepend hex char
function uuid_linker:internal/hex/prepend_char with storage uuid_linker Temp