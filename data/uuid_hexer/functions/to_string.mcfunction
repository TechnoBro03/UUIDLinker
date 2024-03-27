# Clear data
data modify storage uuid_hexer Hex.String set value ""

# Turn hexadecimal array into hexadecimal string
scoreboard players set .count UUIDHexer 32
function uuid_hexer:string_helper