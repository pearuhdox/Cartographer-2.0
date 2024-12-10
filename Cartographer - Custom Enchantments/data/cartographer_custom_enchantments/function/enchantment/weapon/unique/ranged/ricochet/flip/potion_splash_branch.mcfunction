data modify entity @s Item set from storage cartographer_custom_enchantments:ricochet_potion data.Item

execute if score $side_reflect ca.ench_ricochet_lvl matches 1 if score $swap ca.ench_ricochet_lvl matches 1.. run data modify entity @s Motion set value [-1.0d,0.0d,0.0d]
execute if score $side_reflect ca.ench_ricochet_lvl matches 2 if score $swap ca.ench_ricochet_lvl matches 1.. run data modify entity @s Motion set value [0.0d,-1.0d,0.0d]
execute if score $side_reflect ca.ench_ricochet_lvl matches 3 if score $swap ca.ench_ricochet_lvl matches 1.. run data modify entity @s Motion set value [0.0d,0.0d,-1.0d]

execute if score $side_reflect ca.ench_ricochet_lvl matches 1 if score $swap ca.ench_ricochet_lvl matches ..0 run data modify entity @s Motion set value [1.0d,0.0d,0.0d]
execute if score $side_reflect ca.ench_ricochet_lvl matches 2 if score $swap ca.ench_ricochet_lvl matches ..0 run data modify entity @s Motion set value [0.0d,1.0d,0.0d]
execute if score $side_reflect ca.ench_ricochet_lvl matches 3 if score $swap ca.ench_ricochet_lvl matches ..0 run data modify entity @s Motion set value [0.0d,0.0d,1.0d]

