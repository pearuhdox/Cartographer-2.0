attribute @s minecraft:block_interaction_range modifier remove ca.extended_stat
attribute @s minecraft:entity_interaction_range modifier remove ca.extended_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_extended_lvl
scoreboard players operation $value ca.stat_var *= $25 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/extended/macro with storage cartographer_custom_attributes:macro