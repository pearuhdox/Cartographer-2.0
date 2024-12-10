attribute @s minecraft:attack_damage modifier remove ca.finesse_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_finesse_lvl
scoreboard players operation $value ca.stat_var *= $5 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.1 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/finesse/macro with storage cartographer_custom_attributes:macro