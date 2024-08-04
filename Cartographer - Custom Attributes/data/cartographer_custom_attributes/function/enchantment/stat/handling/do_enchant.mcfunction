attribute @s minecraft:player.mining_efficiency modifier remove ca.handling_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_handling_lvl
scoreboard players operation $value ca.stat_var *= $value ca.stat_var
scoreboard players add $value ca.stat_var 7

execute store result storage cartographer_custom_attributes:macro value double 0.25 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/handling/macro with storage cartographer_custom_attributes:macro