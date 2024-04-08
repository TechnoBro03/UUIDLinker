# Check if UUID was already calculated
execute if score @s UUIDLinkerA matches 0.. run function uuid_linker:internal/retrieve
execute if score @s UUIDLinkerA matches 0.. run return 0

# Calculate UUID
data modify storage uuid_linker UUID.IntArray set from entity @s UUID
function uuid_linker:internal/index
function uuid_linker:internal/store
function uuid_linker:internal/hex with storage uuid_linker Temp
function uuid_linker:internal/concat with storage uuid_linker Temp