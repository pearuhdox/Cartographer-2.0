execute if entity @a[distance=..3,tag=pouches.has_mat_pouch] run function pouches:pouch/materials/insert

execute unless entity @s[tag=pouches.pickup_delay] run data modify entity @s PickupDelay set value 20
tag @s add pouches.pickup_delay