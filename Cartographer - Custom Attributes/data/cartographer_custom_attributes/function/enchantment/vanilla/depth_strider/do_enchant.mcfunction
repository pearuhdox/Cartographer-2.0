attribute @s minecraft:water_movement_efficiency modifier remove ca.depth_strider_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_depth_strider_lvl
scoreboard players operation $value ca.stat_var *= $33 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/vanilla/depth_strider/macro with storage cartographer_custom_attributes:macro