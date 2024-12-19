data modify entity @s Item set from storage cartographer_charon:multiplayer_bag Item

data modify entity @s Health set value 1024
data modify entity @s Glowing set value 1b
data modify entity @s Age set value -32768
data modify entity @s PickupDelay set value 0
data modify entity @s NoGravity set value 1b


tag @s remove ca.new

execute at @p positioned ~ ~0.25 ~ run tp @s ~ ~ ~