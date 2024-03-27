# Store callers UUID
data modify storage uuid_linker UUID.IntArray set from entity @s UUID

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