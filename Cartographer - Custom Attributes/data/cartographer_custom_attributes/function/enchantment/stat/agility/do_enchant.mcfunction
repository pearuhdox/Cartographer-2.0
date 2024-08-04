attribute @s minecraft:generic.jump_strength modifier remove ca.agility_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_agility_lvl
execute if score $value ca.stat_var matches 4.. run scoreboard players set $value ca.stat_var 3

scoreboard players set $amount ca.stat_var 0
execute if score $value ca.stat_var matches 1 run scoreboard players set $amount ca.stat_var 22
execute if score $value ca.stat_var matches 2 run scoreboard players set $amount ca.stat_var 35
execute if score $value ca.stat_var matches 3 run scoreboard players set $amount ca.stat_var 45

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $amount ca.stat_var
function cartographer_custom_attributes:enchantment/stat/agility/macro with storage cartographer_custom_attributes:macro