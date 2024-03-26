$scoreboard players set .INT32 Database $(INT32)

scoreboard players operation .quotient Database = .INT32 Database




# Twos compliment

execute if score .quotient Database matches ..0 run scoreboard players operation .quotient Database *= .-1 Database



function testing:binary_helper