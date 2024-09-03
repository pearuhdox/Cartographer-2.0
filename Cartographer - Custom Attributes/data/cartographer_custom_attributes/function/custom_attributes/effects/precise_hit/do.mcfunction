scoreboard players operation $orig_damage ca.precise_hit_var = $damage ca.precise_hit_var

scoreboard players operation $damage ca.precise_hit_var *= $25 ca.CONSTANT
scoreboard players operation $damage ca.precise_hit_var /= $100 ca.CONSTANT

execute on attacker if score @s ca.attr_precise_hit_damage_value matches -1999999.. run scoreboard players operation $damage ca.precise_hit_var += @s ca.attr_precise_hit_damage_value

execute on attacker if score @s ca.attr_precise_hit_damage_percent matches -1999999.. run scoreboard players operation $damage ca.precise_hit_var *= @s ca.attr_precise_hit_damage_percent
execute on attacker if score @s ca.attr_precise_hit_damage_percent matches -1999999.. run scoreboard players operation $damage ca.precise_hit_var /= $100 ca.CONSTANT

scoreboard players operation $damage ca.precise_hit_var += $orig_damage ca.precise_hit_var


execute store result storage cartographer:custom_attributes precise_hit_damage double 0.01 run scoreboard players get $damage ca.precise_hit_var
function cartographer_custom_attributes:custom_attributes/effects/precise_hit/macro with storage cartographer:custom_attributes

execute on attacker run scoreboard players set @s ca.precise_hit_entropy 0