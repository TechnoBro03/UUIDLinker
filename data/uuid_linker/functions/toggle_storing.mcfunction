scoreboard players operation .store UUIDLinker *= .-1 UUIDLinker

execute if score .store UUIDLinker matches -1 run data remove storage uuid_linker Entities

execute if score .store UUIDLinker matches -1 run tellraw @a ["",{"text":"<","color":"white"},{"text":"UUID Linker","color":"aqua"},{"text":"> UUID storing turned off and records deleted!"}]
execute if score .store UUIDLinker matches 1 run tellraw @a ["",{"text":"<","color":"white"},{"text":"UUID Linker","color":"aqua"},{"text":"> UUID storing turned on!"}]