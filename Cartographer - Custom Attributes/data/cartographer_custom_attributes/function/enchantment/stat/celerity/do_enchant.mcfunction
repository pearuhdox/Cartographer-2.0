attribute @s minecraft:movement_speed modifier remove ca.celerity_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_celerity_lvl
scoreboard players operation $value ca.stat_var *= $4 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/celerity/macro with storage cartographer_custom_attributes:macro