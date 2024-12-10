scoreboard players set $trident_valid ca.ench_collapse_lvl 0
execute unless score $trident_test ca.collapse_x matches 0 run scoreboard players set $trident_valid ca.ench_collapse_lvl 1
execute unless score $trident_test ca.collapse_y matches 0 run scoreboard players set $trident_valid ca.ench_collapse_lvl 1
execute unless score $trident_test ca.collapse_z matches 0 run scoreboard players set $trident_valid ca.ench_collapse_lvl 1

execute if score $trident_valid ca.ench_collapse_lvl matches 1.. run scoreboard players operation @s ca.collapse_x = $trident_test ca.collapse_x
execute if score $trident_valid ca.ench_collapse_lvl matches 1.. run scoreboard players operation @s ca.collapse_y = $trident_test ca.collapse_y
execute if score $trident_valid ca.ench_collapse_lvl matches 1.. run scoreboard players operation @s ca.collapse_z = $trident_test ca.collapse_z

execute if score $trident_valid ca.ench_collapse_lvl matches 1.. run scoreboard players operation @s ca.collapse_break_speed = $trident_test ca.collapse_break_speed

execute if score $trident_valid ca.ench_collapse_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/create_breaker