attribute @s minecraft:mining_efficiency modifier remove ca.handling_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_handling_lvl
scoreboard players operation $value ca.stat_var *= $3 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 1.0 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/handling/macro with storage cartographer_custom_attributes:macro