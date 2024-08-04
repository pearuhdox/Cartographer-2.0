scoreboard players operation $value ca.ench_var = @s ca.ench_hastiness_lvl

execute store result storage cartographer_custom_statuses:macro value double 0.1 run scoreboard players get $value ca.ench_var
function cartographer_custom_statuses:enchantment/passive/hastiness/macro with storage cartographer_custom_statuses:macro