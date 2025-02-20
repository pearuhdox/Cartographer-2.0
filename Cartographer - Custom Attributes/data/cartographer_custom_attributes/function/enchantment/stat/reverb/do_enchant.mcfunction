attribute @s minecraft:oxygen_bonus modifier remove ca.attr_chaining_hit_chance_ench_percent
attribute @s minecraft:oxygen_bonus modifier remove ca.attr_chaining_hit_amount_ench_value

scoreboard players operation $value ca.stat_var = @s ca.ench_reverb_lvl
scoreboard players operation $value ca.stat_var *= $10 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.00000000001 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/reverb/macro with storage cartographer_custom_attributes:macro