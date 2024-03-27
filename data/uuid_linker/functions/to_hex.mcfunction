# Clear data
data modify storage uuid_linker Hex.Array set value []

# Copy bit array
$data modify storage uuid_linker Hex.BinaryArray set value $(Array)

# Translate bit array into hexadecimal array
scoreboard players set .count UUIDLinker 32
function uuid_linker:hex_helper

# Translate hexadecimal array into hexadecimal string
function uuid_linker:to_string