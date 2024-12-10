attribute @s minecraft:step_height modifier remove ca.traveling_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_traveling_lvl
execute if score $value ca.stat_var matches 4.. run scoreboard players set $value ca.stat_var 3

execute store result storage cartographer_custom_attributes:macro value double 1 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/traveling/macro with storage cartographer_custom_attributes:macro