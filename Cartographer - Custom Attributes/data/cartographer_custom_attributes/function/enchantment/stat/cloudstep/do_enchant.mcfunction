attribute @s minecraft:oxygen_bonus modifier remove ca.attr_extra_jump_count_ench_value

scoreboard players operation $value ca.stat_var = @s ca.ench_cloudstep_lvl
#scoreboard players operation $value ca.stat_var *= $1 ca.CONSTANT

execute store result storage cartographer_custom_attributes:macro value double 0.0000000001 run scoreboard players get $value ca.stat_var
function cartographer_custom_attributes:enchantment/stat/cloudstep/macro with storage cartographer_custom_attributes:macro