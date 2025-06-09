execute if entity @s[type=player] run scoreboard players operation $lvl ca.ench_quake_lvl = $quake ca.ench_value
execute unless entity @s[type=player] run scoreboard players operation $lvl ca.ench_quake_lvl = @s ca.ench_quake_lvl

execute if score $spawner_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_quake_lvl = $quake_hand ca.ench_value
execute if score $summon_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_quake_lvl = $kinship_lvl ca.ench_var

scoreboard players operation $mult ca.ench_var = $lvl ca.ench_quake_lvl
scoreboard players operation $min_result_damage ca.ench_var = $lvl ca.ench_quake_lvl

scoreboard players operation $mult ca.ench_var *= $15 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var *= $15 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var *= $10 ca.CONSTANT
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $result_damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT

scoreboard players set $size ca.ench_quake_lvl 800

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_quake_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_quake_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_quake_lvl /= $100 ca.CONSTANT

scoreboard players operation $half_size ca.ench_quake_lvl = $size ca.ench_quake_lvl
scoreboard players operation $size_neg_1 ca.ench_quake_lvl = $size ca.ench_quake_lvl

scoreboard players operation $half_size ca.ench_quake_lvl /= $2 ca.CONSTANT
scoreboard players remove $size_neg_1 ca.ench_quake_lvl 100