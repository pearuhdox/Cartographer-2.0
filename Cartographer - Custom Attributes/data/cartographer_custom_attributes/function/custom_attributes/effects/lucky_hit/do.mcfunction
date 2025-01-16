scoreboard players operation $damage ca.lucky_hit_var *= $25 ca.CONSTANT
scoreboard players operation $damage ca.lucky_hit_var /= $100 ca.CONSTANT

execute on attacker if score $lucky_hit_damage_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.lucky_hit_var += $lucky_hit_damage_flat ca.attr_apply_var

execute on attacker if score $lucky_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.lucky_hit_var *= $lucky_hit_damage_percent ca.attr_apply_var
execute on attacker if score $lucky_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.lucky_hit_var /= $100 ca.CONSTANT

scoreboard players operation $damage ca.lucky_hit_var += $orig_damage ca.lucky_hit_var


execute store result storage cartographer:custom_attributes lucky_hit_damage double 0.01 run scoreboard players get $damage ca.lucky_hit_var
function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/macro with storage cartographer:custom_attributes

execute on attacker run scoreboard players set @s ca.lucky_hit_entropy 0