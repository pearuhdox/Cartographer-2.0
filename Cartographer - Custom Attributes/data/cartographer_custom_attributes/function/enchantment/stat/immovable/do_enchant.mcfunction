attribute @s minecraft:knockback_resistance modifier remove ca.immovable_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_immovable_lvl

execute store result storage cartographer_custom_attributes:macro value double 0.1 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/immovable/macro with storage cartographer_custom_attributes:macro