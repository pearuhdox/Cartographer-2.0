scoreboard players operation $lvl ca.ench_induction_lvl = @s ca.ench_induction_lvl
execute if score $spawner_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_induction_lvl = $induction_hand ca.ench_value
execute if score $summon_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_induction_lvl = $kinship_lvl ca.ench_var

scoreboard players operation $mult ca.ench_var = $lvl ca.ench_induction_lvl
scoreboard players operation $mult ca.ench_var *= $40 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var = $lvl ca.ench_induction_lvl
scoreboard players operation $min_result_damage ca.ench_var *= $20 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var *= $10 ca.CONSTANT
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $result_damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT


scoreboard players set $length ca.ench_induction_lvl 800

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $length ca.ench_induction_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $length ca.ench_induction_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $length ca.ench_induction_lvl /= $100 ca.CONSTANT