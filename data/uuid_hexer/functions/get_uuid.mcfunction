# Store callers UUID
data modify storage uuid_hexer UUID.IntArray set from entity @s UUID

# Clear data
data modify storage uuid_hexer Binary.Array set value []

# Get the binary representation of each element in the UUID array, appended together
data modify storage uuid_hexer Binary.INT32 set from storage uuid_hexer UUID.IntArray[3]
function uuid_hexer:to_binary with storage uuid_hexer Binary

data modify storage uuid_hexer Binary.INT32 set from storage uuid_hexer UUID.IntArray[2]
function uuid_hexer:to_binary with storage uuid_hexer Binary

data modify storage uuid_hexer Binary.INT32 set from storage uuid_hexer UUID.IntArray[1]
function uuid_hexer:to_binary with storage uuid_hexer Binary

data modify storage uuid_hexer Binary.INT32 set from storage uuid_hexer UUID.IntArray[0]
function uuid_hexer:to_binary with storage uuid_hexer Binary

# Turn bit array into hexidecimal string
function uuid_hexer:to_hex with storage uuid_hexer Binary

# Format hex string (add dashes)
function uuid_hexer:format with storage uuid_hexer Hex

# Finally, set UUID.HexString as the formatted hex string
data modify storage uuid_hexer UUID.HexString set from storage uuid_hexer Format.FormattedString