execute if score $ranged_damage ca.attr_apply_var matches 1.. run scoreboard players operation $damage ca.ench_shrapnel_lvl = $ranged_damage ca.attr_apply_var

execute unless score $ranged_damage ca.attr_apply_var matches 1.. unless score $bobber_damage ca.attr_apply_var matches 1.. unless score $pot_land_damage ca.attr_apply_var matches 1.. run scoreboard players set $damage ca.ench_shrapnel_lvl 800

execute if score $potion_hit ca.ench_var matches 1.. run scoreboard players operation $damage ca.ench_shrapnel_lvl = $pot_land_damage ca.attr_apply_var
execute if score $potion_hit ca.ench_var matches 1.. run scoreboard players operation $damage ca.ench_shrapnel_lvl *= $10 ca.CONSTANT

execute if score $bobber_hit ca.ench_var matches 1.. run scoreboard players operation $damage ca.ench_shrapnel_lvl = $bobber_damage ca.attr_apply_var
execute if score $bobber_hit ca.ench_var matches 1.. run scoreboard players operation $damage ca.ench_shrapnel_lvl *= $10 ca.CONSTANT


execute on attacker if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_shrapnel_lvl += @s ca.attr_aoe_damage_value

execute on attacker if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $path_dist ca.ench_shrapnel_lvl *= @s ca.attr_aoe_damage_percent
execute on attacker if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $path_dist ca.ench_shrapnel_lvl /= $100 ca.CONSTANT


scoreboard players operation $damage ca.ench_shrapnel_lvl /= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_shrapnel_lvl

scoreboard players set $path_dist ca.ench_shrapnel_lvl 600
execute on attacker if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $path_dist ca.ench_shrapnel_lvl += @s ca.attr_aoe_size_value

execute on attacker if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $path_dist ca.ench_shrapnel_lvl *= @s ca.attr_aoe_size_percent
execute on attacker if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $path_dist ca.ench_shrapnel_lvl /= $100 ca.CONSTANT

scoreboard players operation $path_dist ca.ench_shrapnel_lvl /= $50 ca.CONSTANT

tag @s add ca.shrapnel_hit

execute on attacker if entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=..1.75,tag=!ca.shrapnel_hit] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/damage
execute anchored feet positioned ^ ^0.75 ^ on attacker run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/start_paths

tag @e[distance=..32] remove ca.shrapnel_hit