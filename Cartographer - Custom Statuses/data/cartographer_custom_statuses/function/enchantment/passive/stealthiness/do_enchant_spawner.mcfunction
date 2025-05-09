scoreboard players operation $value ca.ench_var = @s ca.ench_stealthiness_main_lvl
scoreboard players operation $value ca.ench_var *= $3 ca.CONSTANT
execute if score $value ca.ench_var matches 16.. run scoreboard players set $value ca.ench_var 15

scoreboard players set $range ca.ench_var 18
scoreboard players operation $range ca.ench_var -= $value ca.ench_var

execute store result storage cartographer_custom_statuses:macro value int 1 run scoreboard players get $range ca.ench_var
function cartographer_custom_statuses:enchantment/passive/stealthiness/macro with storage cartographer_custom_statuses:macro