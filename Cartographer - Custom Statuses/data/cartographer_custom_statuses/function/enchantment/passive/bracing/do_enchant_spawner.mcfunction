scoreboard players operation $value ca.ench_var = @s ca.ench_bracing_main_lvl

execute store result storage cartographer_custom_statuses:macro value int 1 run scoreboard players get $value ca.ench_var
function cartographer_custom_statuses:enchantment/passive/bracing/macro with storage cartographer_custom_statuses:macro