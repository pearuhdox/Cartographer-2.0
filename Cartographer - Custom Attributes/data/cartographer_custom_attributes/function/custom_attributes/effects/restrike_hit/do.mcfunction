scoreboard players operation $damage ca.restrike_hit_var *= $25 ca.CONSTANT
scoreboard players operation $damage ca.restrike_hit_var /= $100 ca.CONSTANT

execute on attacker if score $restrike_hit_damage_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.restrike_hit_var += $restrike_hit_damage_flat ca.attr_apply_var

execute on attacker if score $restrike_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.restrike_hit_var *= $restrike_hit_damage_percent ca.attr_apply_var
execute on attacker if score $restrike_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.restrike_hit_var /= $100 ca.CONSTANT

scoreboard players set $count ca.restrike_hit_var 1
execute on attacker run scoreboard players operation $count_attr ca.restrike_hit_var = $restrike_hit_amount_flat ca.attr_apply_var
scoreboard players operation $count_attr ca.restrike_hit_var /= $100 ca.CONSTANT

execute on attacker if score $restrike_hit_amount_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $count ca.restrike_hit_var += $count_attr ca.restrike_hit_var

execute on attacker if score $restrike_hit_amount_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $count ca.restrike_hit_var *= $restrike_hit_amount_percent ca.attr_apply_var
execute on attacker if score $restrike_hit_amount_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $count ca.restrike_hit_var /= $100 ca.CONSTANT

scoreboard players operation $count ca.restrike_hit_var *= $tier ca.restrike_hit_var

execute store result storage cartographer:custom_attributes restrike_hit_damage double 0.01 run scoreboard players get $damage ca.restrike_hit_var
execute store result storage cartographer:custom_attributes restrike_count int 1 run scoreboard players get $count ca.restrike_hit_var
execute store result storage cartographer:custom_attributes restrike_tier int 1 run scoreboard players get $tier ca.restrike_hit_var

scoreboard players set $rate ca.restrike_hit_var 7

execute on attacker run scoreboard players operation $rate_attr ca.restrike_hit_var = $restrike_hit_rate_flat ca.attr_apply_var
scoreboard players operation $rate_attr ca.restrike_hit_var /= $100 ca.CONSTANT

execute on attacker if score $restrike_hit_rate_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $rate ca.restrike_hit_var += $rate_attr ca.restrike_hit_var

execute on attacker if score $restrike_hit_rate_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $rate ca.restrike_hit_var *= $restrike_hit_rate_percent ca.attr_apply_var
execute on attacker if score $restrike_hit_rate_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $rate ca.restrike_hit_var /= $100 ca.CONSTANT

execute if score $rate ca.restrike_hit_var matches ..0 run scoreboard players set $rate ca.restrike_hit_var 1

scoreboard players operation $hit_rate ca.restrike_hit_var = $count ca.restrike_hit_var
scoreboard players operation $hit_rate ca.restrike_hit_var *= $rate ca.restrike_hit_var

scoreboard players add $hit_rate ca.restrike_hit_var 1
execute store result storage cartographer:custom_attributes restrike_duration int 1 run scoreboard players get $hit_rate ca.restrike_hit_var

execute store result storage cartographer:custom_attributes restrike_hit_rate int 1 run scoreboard players get $rate ca.restrike_hit_var

data modify storage gu:main out set value "-"
execute on attacker run function gu:generate
data modify storage cartographer:custom_attributes restrike_owner set from storage gu:main out

tag @s add ca.was_restriked
function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/macro with storage cartographer:custom_attributes

execute on attacker run scoreboard players set @s ca.restrike_entropy 0