# Get the first character in the hex array
data modify storage uuid_hexer Hex.Char set from storage uuid_hexer Hex.Array[0]

# Append single character to the whole string
function uuid_hexer:string_helper2 with storage uuid_hexer Hex

# Remove the first character from the array
data remove storage uuid_hexer Hex.Array[0]

# Repeat for all 32 characters
scoreboard players remove .count UUIDHexer 1
execute unless score .count UUIDHexer matches 0 run function uuid_hexer:string_helper