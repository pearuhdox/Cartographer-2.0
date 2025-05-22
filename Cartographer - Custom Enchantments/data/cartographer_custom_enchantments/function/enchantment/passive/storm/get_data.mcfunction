scoreboard players operation $lvl ca.ench_storm_lvl = $storm ca.ench_value
execute if score $spawner_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_storm_lvl = $storm_hand ca.ench_value
execute if score $summon_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_storm_lvl = $kinship_lvl ca.ench_var

scoreboard players operation $duration ca.ench_storm_lvl = $storm ca.ench_value
scoreboard players add $duration ca.ench_storm_lvl 3
scoreboard players operation $duration ca.ench_storm_lvl *= $30 ca.CONSTANT
scoreboard players add $duration ca.ench_storm_lvl 10


scoreboard players set $mult ca.ench_var 15
scoreboard players set $min_result_damage ca.ench_var 100
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $result_damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT


execute if entity @s[type=player] run scoreboard players set $size ca.ench_storm_lvl 900
execute unless entity @s[type=player] run scoreboard players set $size ca.ench_storm_lvl 550

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_storm_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_storm_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_storm_lvl /= $100 ca.CONSTANT

scoreboard players operation $half_size ca.ench_storm_lvl = $size ca.ench_storm_lvl
scoreboard players operation $size_neg_1 ca.ench_storm_lvl = $size ca.ench_storm_lvl
scoreboard players operation $quarter_size ca.ench_storm_lvl = $size ca.ench_storm_lvl

scoreboard players operation $half_size ca.ench_storm_lvl /= $2 ca.CONSTANT
scoreboard players operation $quarter_size ca.ench_storm_lvl /= $4 ca.CONSTANT

scoreboard players remove $size_neg_1 ca.ench_storm_lvl 100