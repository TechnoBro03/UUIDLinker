data modify storage database UUID.0.INT32 set from entity @s UUID[0]
data modify storage database UUID.1.INT32 set from entity @s UUID[1]
data modify storage database UUID.2.INT32 set from entity @s UUID[2]
data modify storage database UUID.3.INT32 set from entity @s UUID[3]
data modify storage database UUID.BIN set value []

function testing:to_binary with storage database UUID.3
function testing:to_binary with storage database UUID.2
function testing:to_binary with storage database UUID.1
function testing:to_binary with storage database UUID.0