# Get the stored "UUID"
execute store result storage uuid_linker Temp.a int 1 run scoreboard players get @s UUIDLinkerA
execute store result storage uuid_linker Temp.b int 1 run scoreboard players get @s UUIDLinkerB
execute store result storage uuid_linker Temp.c int 1 run scoreboard players get @s UUIDLinkerC
execute store result storage uuid_linker Temp.d int 1 run scoreboard players get @s UUIDLinkerD
execute store result storage uuid_linker Temp.e int 1 run scoreboard players get @s UUIDLinkerE
execute store result storage uuid_linker Temp.f int 1 run scoreboard players get @s UUIDLinkerF
execute store result storage uuid_linker Temp.g int 1 run scoreboard players get @s UUIDLinkerG
execute store result storage uuid_linker Temp.h int 1 run scoreboard players get @s UUIDLinkerH

function uuid_linker:internal/hex with storage uuid_linker Temp
function uuid_linker:internal/concat with storage uuid_linker Temp