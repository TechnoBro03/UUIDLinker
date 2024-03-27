# Get the first character in the hex array
data modify storage uuid_linker Hex.Char set from storage uuid_linker Hex.Array[0]

# Append single character to the whole string
function uuid_linker:internal/string_helper2 with storage uuid_linker Hex

# Remove the first character from the array
data remove storage uuid_linker Hex.Array[0]

# Repeat for all 32 characters
scoreboard players remove .count UUIDLinker 1
execute unless score .count UUIDLinker matches 0 run function uuid_linker:internal/string_helper