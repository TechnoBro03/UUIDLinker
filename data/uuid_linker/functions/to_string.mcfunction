# Clear data
data modify storage uuid_linker Hex.String set value ""

# Turn hexadecimal array into hexadecimal string
scoreboard players set .count UUIDLinker 32
function uuid_linker:string_helper