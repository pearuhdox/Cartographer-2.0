attribute @s minecraft:attack_speed modifier remove ca.dexterity_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_dexterity_lvl
scoreboard players operation $value ca.stat_var *= $5 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/dexterity/macro with storage cartographer_custom_attributes:macro