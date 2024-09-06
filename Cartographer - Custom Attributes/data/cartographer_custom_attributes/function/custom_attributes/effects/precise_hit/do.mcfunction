scoreboard players operation $orig_damage ca.precise_hit_var = $damage ca.precise_hit_var

scoreboard players operation $damage ca.precise_hit_var *= $25 ca.CONSTANT
scoreboard players operation $damage ca.precise_hit_var /= $100 ca.CONSTANT

execute on attacker if score $precise_hit_damage_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.precise_hit_var += $precise_hit_damage_flat ca.attr_apply_var

execute on attacker if score $precise_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.precise_hit_var *= $precise_hit_damage_percent ca.attr_apply_var
execute on attacker if score $precise_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.precise_hit_var /= $100 ca.CONSTANT

scoreboard players operation $damage ca.precise_hit_var += $orig_damage ca.precise_hit_var


execute store result storage cartographer:custom_attributes precise_hit_damage double 0.01 run scoreboard players get $damage ca.precise_hit_var
function cartographer_custom_attributes:custom_attributes/effects/precise_hit/macro with storage cartographer:custom_attributes

execute on attacker run scoreboard players set @s ca.precise_hit_entropy 0