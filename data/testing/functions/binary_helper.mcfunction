# Needs to be 32 bits exactly, somehow


scoreboard players operation .remainder Database = .quotient Database

scoreboard players operation .quotient Database /= .2 Database
scoreboard players operation .remainder Database %= .2 Database

execute store result storage database UUID.remainder byte 1 run scoreboard players get .remainder Database
data modify storage database UUID.BIN prepend from storage database UUID.remainder

execute unless score .quotient Database matches 0 run function testing:binary_helper