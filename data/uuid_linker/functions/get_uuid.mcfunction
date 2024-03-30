# Store UUID int array
data modify storage uuid_linker UUID.IntArray set from entity @s UUID

# Check if UUID has already been stored
execute if function uuid_linker:internal/store/check run return 0

# Turn int array into hexadecimal array
function uuid_linker:internal/hex/hex

# Turn hexadecimal array into hexadecimal string
function uuid_linker:internal/string/string

# Format string
function uuid_linker:internal/format/format

# Store result
execute if score .store UUIDLinker matches 1 run function uuid_linker:internal/store/store with storage uuid_linker Temp