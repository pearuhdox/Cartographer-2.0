scoreboard players operation $damage ca.ench_var = $point_blank ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

scoreboard players set $active ca.ench_point_blank_lvl 0
execute at @s on attacker if entity @s[distance=..8.5] run scoreboard players set $active ca.ench_point_blank_lvl 1

execute if score $active ca.ench_point_blank_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/point_blank/damage with storage cartographer:custom_enchantments
