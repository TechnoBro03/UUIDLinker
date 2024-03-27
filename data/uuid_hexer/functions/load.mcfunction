scoreboard objectives add UUIDHexer dummy

# Set predefined values for math and look-up tables
scoreboard players set .2 UUIDHexer 2
scoreboard players set .4 UUIDHexer 4
scoreboard players set .8 UUIDHexer 8
scoreboard players set .-1 UUIDHexer -1
scoreboard players set .MAX UUIDHexer 2147483647

data modify storage uuid_hexer Hex.Table set value ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']

tellraw @a ["",{"text":"<","color":"white"},{"text":"UUID Hexer","color":"aqua"},{"text":"> Datapack loaded!"}]