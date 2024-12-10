attribute @s minecraft:oxygen_bonus modifier remove ca.attr_healing_power_ench_percent

scoreboard players operation $value ca.stat_var = @s ca.ench_invigorated_lvl
scoreboard players operation $value ca.stat_var *= $10 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.000000000001 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/invigorated/macro with storage cartographer_custom_attributes:macro