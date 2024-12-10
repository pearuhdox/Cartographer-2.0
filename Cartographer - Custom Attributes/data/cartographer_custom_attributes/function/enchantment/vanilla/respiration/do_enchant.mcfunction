attribute @s minecraft:oxygen_bonus modifier remove ca.respiration_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_respiration_lvl

execute store result storage cartographer_custom_attributes:macro value int 1 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/vanilla/respiration/macro with storage cartographer_custom_attributes:macro