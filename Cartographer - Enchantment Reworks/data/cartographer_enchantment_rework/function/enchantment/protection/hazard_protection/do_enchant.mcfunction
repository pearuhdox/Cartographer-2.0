attribute @s minecraft:movement_speed modifier remove ca.hazard_protection_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_hazard_protection_lvl
scoreboard players operation $value ca.stat_var *= $5 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $value ca.stat_var
function cartographer_enchantment_rework:enchantment/protection/hazard_protection/macro with storage cartographer_custom_attributes:macro