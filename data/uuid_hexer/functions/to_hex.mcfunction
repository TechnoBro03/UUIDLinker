# Clear data
data modify storage uuid_hexer Hex.Array set value []

# Copy bit array
$data modify storage uuid_hexer Hex.BinaryArray set value $(Array)

# Translate bit array into hexidecimal array
scoreboard players set .count UUIDHexer 32
function uuid_hexer:hex_helper

# Translate hexidecimal array into hexidecimal string
function uuid_hexer:to_string