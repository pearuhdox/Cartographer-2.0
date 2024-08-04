scoreboard players operation $value ca.ench_var = @s ca.ench_evasion_lvl
scoreboard players operation $value ca.ench_var *= $4 ca.CONSTANT
scoreboard players operation $value ca.ench_var < $80 ca.CONSTANT

execute store result storage cartographer_custom_statuses:macro value int 1 run scoreboard players get $value ca.ench_var
function cartographer_custom_statuses:enchantment/passive/evasion/macro with storage cartographer_custom_statuses:macro