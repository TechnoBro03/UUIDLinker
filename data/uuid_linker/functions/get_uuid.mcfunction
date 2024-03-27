# Store callers UUID
data modify storage uuid_linker UUID.IntArray set from entity @s UUID

# Check if UUID has already been stored
data remove storage uuid_linker UUID.HexString
data modify storage uuid_linker UUID.0 set from storage uuid_linker UUID.IntArray[0]
data modify storage uuid_linker UUID.1 set from storage uuid_linker UUID.IntArray[1]
data modify storage uuid_linker UUID.2 set from storage uuid_linker UUID.IntArray[2]
data modify storage uuid_linker UUID.3 set from storage uuid_linker UUID.IntArray[3]
function uuid_linker:check with storage uuid_linker UUID

execute if data storage uuid_linker UUID.HexString run return 0

# Clear data
data modify storage uuid_linker Binary.Array set value []

# Get the binary representation of each element in the UUID array, appended together
data modify storage uuid_linker Binary.INT32 set from storage uuid_linker UUID.IntArray[3]
function uuid_linker:to_binary with storage uuid_linker Binary

data modify storage uuid_linker Binary.INT32 set from storage uuid_linker UUID.IntArray[2]
function uuid_linker:to_binary with storage uuid_linker Binary

data modify storage uuid_linker Binary.INT32 set from storage uuid_linker UUID.IntArray[1]
function uuid_linker:to_binary with storage uuid_linker Binary

data modify storage uuid_linker Binary.INT32 set from storage uuid_linker UUID.IntArray[0]
function uuid_linker:to_binary with storage uuid_linker Binary

# Turn bit array into hexadecimal string
function uuid_linker:to_hex with storage uuid_linker Binary

# Format hexadecimal string (add dashes)
function uuid_linker:format with storage uuid_linker Hex

# Finally, set UUID.HexString as the formatted hexadecimal string
data modify storage uuid_linker UUID.HexString set from storage uuid_linker Format.FormattedString

# Store UUID Hexadecimal string
execute if score .store UUIDLinker matches 1 run function uuid_linker:store with storage uuid_linker UUID