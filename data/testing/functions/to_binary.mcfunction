$scoreboard players set .INT32 Database $(INT32)

scoreboard players operation .quotient Database = .INT32 Database

# Put in 8bit 2s compliment if negative
execute if score .INT32 Database matches ..0 run scoreboard players operation .quotient Database += .MAX Database
execute if score .INT32 Database matches ..0 run scoreboard players add .quotient Database 1

scoreboard players set .numBits Database 32
function testing:binary_helper

# Set first bit to 1 for 8bit 2s compliment if negative
execute if score .INT32 Database matches ..0 run data modify storage minecraft:database UUID.BIN[0] set value 1b