attribute @s minecraft:player.sneaking_speed modifier remove ca.swift_sneak_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_swift_sneak_lvl
scoreboard players operation $value ca.stat_var *= $15 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.01 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/vanilla/swift_sneak/macro with storage cartographer_custom_attributes:macro