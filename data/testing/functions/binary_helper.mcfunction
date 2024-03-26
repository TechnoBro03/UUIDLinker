scoreboard players operation .remainder Database = .quotient Database

scoreboard players operation .quotient Database /= .2 Database
scoreboard players operation .remainder Database %= .2 Database

execute store result storage database UUID.remainder byte 1 run scoreboard players get .remainder Database
data modify storage database UUID.BIN prepend from storage database UUID.remainder

# Ensures there are 32 bits exactly
scoreboard players remove .numBits Database 1
execute unless score .numBits Database matches 0 run function testing:binary_helper