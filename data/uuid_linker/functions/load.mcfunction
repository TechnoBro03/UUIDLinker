scoreboard objectives add UUIDLinker dummy

# Set predefined values for math and look-up tables
scoreboard players set .2 UUIDLinker 2
scoreboard players set .4 UUIDLinker 4
scoreboard players set .8 UUIDLinker 8
scoreboard players set .-1 UUIDLinker -1
scoreboard players set .MAX UUIDLinker 2147483647

data modify storage uuid_linker Hex.Table set value ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']

tellraw @a ["",{"text":"<","color":"white"},{"text":"UUID Linker","color":"aqua"},{"text":"> Datapack loaded!"}]