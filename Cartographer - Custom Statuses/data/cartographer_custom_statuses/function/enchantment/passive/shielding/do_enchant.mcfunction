scoreboard players operation $value ca.ench_var = @s ca.ench_shielding_lvl
scoreboard players set $time ca.ench_var 60
scoreboard players set $cap ca.ench_var 6
execute if score $value ca.ench_var matches 11.. run scoreboard players set $value ca.ench_var 10
scoreboard players remove $value ca.ench_var 1
execute if score $value ca.ench_var matches 1.. run function cartographer_custom_statuses:enchantment/passive/shielding/rec

execute store result storage cartographer_custom_statuses:macro time int 1 run scoreboard players get $time ca.ench_var
execute store result storage cartographer_custom_statuses:macro cap int 1 run scoreboard players get $cap ca.ench_var
function cartographer_custom_statuses:enchantment/passive/shielding/macro with storage cartographer_custom_statuses:macro