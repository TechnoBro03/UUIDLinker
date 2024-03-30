# Clear data
data modify storage uuid_linker Temp.CharArray set value []
# Set data
data modify storage uuid_linker Temp.IntArray set from entity @s UUID

# IntArray[4] -> CharArray[32]
function uuid_linker:internal/hex/itohex
function uuid_linker:internal/hex/itohex
function uuid_linker:internal/hex/itohex
function uuid_linker:internal/hex/itohex