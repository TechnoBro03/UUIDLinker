# Get the index for lookup table
execute store result score .INT32 UUIDLinkerA run data get entity @s UUID[0]

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
scoreboard players operation .INT32 UUIDLinkerA /= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.b int 1 run scoreboard players get .remainder UUIDLinkerA

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.a int 1 run scoreboard players get .remainder UUIDLinkerA

execute store result score .INT32 UUIDLinkerA run data get entity @s UUID[1]

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
scoreboard players operation .INT32 UUIDLinkerA /= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.d int 1 run scoreboard players get .remainder UUIDLinkerA

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.c int 1 run scoreboard players get .remainder UUIDLinkerA

execute store result score .INT32 UUIDLinkerA run data get entity @s UUID[2]

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
scoreboard players operation .INT32 UUIDLinkerA /= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.f int 1 run scoreboard players get .remainder UUIDLinkerA

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.e int 1 run scoreboard players get .remainder UUIDLinkerA

execute store result score .INT32 UUIDLinkerA run data get entity @s UUID[3]

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
scoreboard players operation .INT32 UUIDLinkerA /= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.h int 1 run scoreboard players get .remainder UUIDLinkerA

scoreboard players operation .remainder UUIDLinkerA = .INT32 UUIDLinkerA
scoreboard players operation .remainder UUIDLinkerA %= .65536 UUIDLinkerA
execute store result storage uuid_linker Temp.g int 1 run scoreboard players get .remainder UUIDLinkerA