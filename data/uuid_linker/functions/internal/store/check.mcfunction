data remove storage uuid_linker UUID.HexString
data modify storage uuid_linker Temp.0 set from storage uuid_linker UUID.IntArray[0]
data modify storage uuid_linker Temp.1 set from storage uuid_linker UUID.IntArray[1]
data modify storage uuid_linker Temp.2 set from storage uuid_linker UUID.IntArray[2]
data modify storage uuid_linker Temp.3 set from storage uuid_linker UUID.IntArray[3]
function uuid_linker:internal/store/retrieve with storage uuid_linker Temp

execute if data storage uuid_linker UUID.HexString run return 1