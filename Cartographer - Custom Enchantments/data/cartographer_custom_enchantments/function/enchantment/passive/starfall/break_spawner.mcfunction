scoreboard players set $spawner_cause ca.ench_var 1

scoreboard players operation $starfall_hand ca.ench_value = @s ca.ench_starfall_main_lvl

function cartographer_custom_enchantments:enchantment/passive/starfall/get_data
execute as @e[type=#cartographer_core:affected_by_carto,distance=..16,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchantment/passive/starfall/get_position

scoreboard players add $size ca.ench_starfall_lvl 150
scoreboard players add $half_size ca.ench_starfall_lvl 75
scoreboard players add $size_neg_1 ca.ench_starfall_lvl 150

function cartographer_custom_enchantments:enchantment/passive/starfall/attempt_create

scoreboard players set $spawner_cause ca.ench_var 0
