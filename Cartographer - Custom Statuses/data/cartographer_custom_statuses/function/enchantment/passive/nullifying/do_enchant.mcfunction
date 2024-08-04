scoreboard players operation $value ca.ench_var = @s ca.ench_nullifying_lvl
scoreboard players set $time ca.ench_var 300
execute if score $value ca.ench_var matches 12.. run scoreboard players set $value ca.ench_var 11
scoreboard players remove $value ca.ench_var 1
execute if score $value ca.ench_var matches 1.. run function cartographer_custom_statuses:enchantment/passive/nullifying/rec

execute if score $time ca.ench_var matches ..100 run scoreboard players set $time ca.ench_var 100

execute store result storage cartographer_custom_statuses:macro time int 1 run scoreboard players get $time ca.ench_var
function cartographer_custom_statuses:enchantment/passive/nullifying/macro with storage cartographer_custom_statuses:macro