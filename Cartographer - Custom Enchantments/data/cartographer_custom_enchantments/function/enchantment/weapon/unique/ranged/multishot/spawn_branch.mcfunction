data modify entity @s {} merge from storage cartographer:custom_enchantments full_data

#data modify entity @s Owner set from storage cartographer:custom_enchantments uuid


#get x vector
scoreboard players operation $math.sin.x bs.in = $multishot_yaw ca.ench_multishot_lvl
function #bs.math:sin
scoreboard players operation $adj_x_mot ca.ench_multishot_lvl = $math.sin bs.out
scoreboard players operation $adj_x_mot ca.ench_multishot_lvl *= $total_mot ca.ench_multishot_lvl

#get z vector
scoreboard players operation $math.cos.x bs.in = $multishot_yaw ca.ench_multishot_lvl
function #bs.math:cos
scoreboard players operation $adj_z_mot ca.ench_multishot_lvl = $math.cos bs.out
scoreboard players operation $adj_z_mot ca.ench_multishot_lvl *= $total_mot ca.ench_multishot_lvl


data modify storage cartographer:custom_enchantments new_motion set value [0.0d,0.0d,0.0d]
data modify storage cartographer:custom_enchantments new_motion[1] set from storage cartographer:custom_enchantments motion[1]

execute store result storage cartographer:custom_enchantments new_motion[0] double 0.00001 run scoreboard players get $adj_x_mot ca.ench_multishot_lvl
execute store result storage cartographer:custom_enchantments new_motion[2] double 0.00001 run scoreboard players get $adj_z_mot ca.ench_multishot_lvl

data modify entity @s Motion set from storage cartographer:custom_enchantments new_motion

data modify entity @s Motion set from storage cartographer:custom_enchantments new_motion

execute if entity @s[type=#minecraft:arrows] run data modify entity @s pickup set value 2b
execute if entity @s[type=minecraft:trident] run data modify entity @s pickup set value 2b

execute if entity @s[type=minecraft:trident] if data entity @s item.components.minecraft:enchantments.minecraft:loyalty run data remove entity @s item.components.minecraft:enchantments.minecraft:loyalty

tag @s add ca.multishot_spawned

function cartographer_core:handlers/register/start