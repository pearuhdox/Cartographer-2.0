attribute @s minecraft:max_health modifier remove ca.vitality_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_vitality_lvl

execute store result storage cartographer_custom_attributes:macro value int 1 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/vitality/macro with storage cartographer_custom_attributes:macro