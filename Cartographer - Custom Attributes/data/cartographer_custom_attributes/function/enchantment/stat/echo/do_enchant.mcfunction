attribute @s minecraft:oxygen_bonus modifier remove ca.attr_restrike_hit_chance_ench_percent
attribute @s minecraft:oxygen_bonus modifier remove ca.attr_restrike_hit_amount_ench_value
attribute @s minecraft:oxygen_bonus modifier remove ca.attr_restrike_hit_rate_ench_value

scoreboard players operation $value ca.stat_var = @s ca.ench_echo_lvl
scoreboard players remove $value ca.stat_var 1
scoreboard players operation $value ca.stat_var *= $10 ca.CONSTANT

scoreboard players operation $rate ca.stat_var = @s ca.ench_echo_lvl
scoreboard players remove $rate ca.stat_var 1
scoreboard players operation $rate ca.stat_var /= $2 ca.CONSTANT
execute if score $rate ca.stat_var matches ..-1 run scoreboard players set $rate ca.stat_var 0

execute store result storage cartographer_custom_attributes:macro value double 0.00000000001 run scoreboard players get $value ca.stat_var
execute store result storage cartographer_custom_attributes:macro rate double 0.0000000001 run scoreboard players get $rate ca.stat_var
function cartographer_custom_attributes:enchantment/stat/echo/macro with storage cartographer_custom_attributes:macro