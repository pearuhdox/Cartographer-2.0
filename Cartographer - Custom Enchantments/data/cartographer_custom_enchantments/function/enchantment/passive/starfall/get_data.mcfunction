scoreboard players operation $mult ca.ench_var = $lvl ca.ench_starfall_lvl
execute if score $spawner_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_starfall_lvl = $starfall_hand ca.ench_value

scoreboard players operation $mult ca.ench_var *= $15 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var = $lvl ca.ench_starfall_lvl
scoreboard players operation $min_result_damage ca.ench_var *= $25 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var *= $10 ca.CONSTANT
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $result_damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT

scoreboard players set $size ca.ench_starfall_lvl 400
execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_starfall_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_starfall_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_starfall_lvl /= $100 ca.CONSTANT

scoreboard players operation $half_size ca.ench_starfall_lvl = $size ca.ench_starfall_lvl
scoreboard players operation $size_neg_1 ca.ench_starfall_lvl = $size ca.ench_starfall_lvl

scoreboard players operation $half_size ca.ench_starfall_lvl /= $2 ca.CONSTANT
scoreboard players remove $size_neg_1 ca.ench_starfall_lvl 100