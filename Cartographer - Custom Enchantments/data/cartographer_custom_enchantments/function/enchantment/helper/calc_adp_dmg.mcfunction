# $mult and $min_result_damage need to be set before running this function
# value is returned in $result_damage


execute store result score $melee_damage ca.ench_var run attribute @s attack_damage get 100
execute unless predicate cartographer_core:player/cant_crit run scoreboard players operation $melee_damage ca.ench_var *= $150 ca.CONSTANT
execute unless predicate cartographer_core:player/cant_crit run scoreboard players operation $melee_damage ca.ench_var /= $100 ca.CONSTANT


execute store result score $ranged_damage ca.ench_var run scoreboard players get @s ca.attr_ranged_damage_value
execute if score @s ca.attr_ranged_damage_percent matches -1999999.. run scoreboard players operation $ranged_damage ca.ench_var *= @s ca.attr_ranged_damage_percent
execute if score @s ca.attr_ranged_damage_percent matches -1999999.. run scoreboard players operation $ranged_damage ca.ench_var /= $100 ca.CONSTANT

execute if score $melee_damage ca.ench_var >= $ranged_damage ca.ench_var run scoreboard players operation $result_damage ca.ench_var = $melee_damage ca.ench_var
execute if score $melee_damage ca.ench_var < $ranged_damage ca.ench_var run scoreboard players operation $result_damage ca.ench_var = $ranged_damage ca.ench_var

scoreboard players operation $result_damage ca.ench_var *= $mult ca.ench_var
scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT

execute if score $result_damage ca.ench_var < $min_result_damage ca.ench_var run scoreboard players operation $result_damage ca.ench_var = $min_result_damage ca.ench_var