
scoreboard players operation $damage ca.chaining_hit_var *= $50 ca.CONSTANT
scoreboard players operation $damage ca.chaining_hit_var /= $100 ca.CONSTANT

execute on attacker if score $chaining_hit_damage_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.chaining_hit_var += $chaining_hit_damage_flat ca.attr_apply_var

execute on attacker if score $chaining_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.chaining_hit_var *= $chaining_hit_damage_percent ca.attr_apply_var
execute on attacker if score $chaining_hit_damage_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $damage ca.chaining_hit_var /= $100 ca.CONSTANT

scoreboard players set $count ca.chaining_hit_var 1
execute on attacker run scoreboard players operation $count_attr ca.chaining_hit_var = $chaining_hit_amount_flat ca.attr_apply_var
scoreboard players operation $count_attr ca.chaining_hit_var /= $100 ca.CONSTANT

execute on attacker if score $chaining_hit_amount_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $count ca.chaining_hit_var += $count_attr ca.chaining_hit_var

execute on attacker if score $chaining_hit_amount_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $count ca.chaining_hit_var *= $chaining_hit_amount_percent ca.attr_apply_var
execute on attacker if score $chaining_hit_amount_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $count ca.chaining_hit_var /= $100 ca.CONSTANT

scoreboard players operation $extra_count ca.chaining_hit_var = $count ca.chaining_hit_var
scoreboard players operation $extra_count ca.chaining_hit_var *= $tier ca.chaining_hit_var
scoreboard players operation $extra_count ca.chaining_hit_var -= $count ca.chaining_hit_var

scoreboard players operation $count ca.chaining_hit_var *= $tier ca.chaining_hit_var


execute store result storage cartographer:custom_attributes chaining_hit_damage double 0.01 run scoreboard players get $damage ca.chaining_hit_var

data modify storage gu:main out set value "-"
execute on attacker run function gu:generate
data modify storage cartographer:custom_attributes chaining_owner set from storage gu:main out

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_attributes chaining_previous set from storage gu:main out

scoreboard players set $range ca.chaining_hit_var 800

execute on attacker if score $aoe_size_flat ca.attr_apply_var matches -1999999.. run scoreboard players operation $range ca.chaining_hit_var += $aoe_size_flat ca.attr_apply_var

execute on attacker if score $aoe_size_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $range ca.chaining_hit_var *= $aoe_size_percent ca.attr_apply_var
execute on attacker if score $aoe_size_percent ca.attr_apply_var matches -1999999.. run scoreboard players operation $range ca.chaining_hit_var /= $100 ca.CONSTANT

execute store result storage cartographer:custom_attributes chaining_range double 0.01 run scoreboard players get $range ca.chaining_hit_var

tag @s add ca.was_chained
function carto_event:api/create_single_entity_event {event:"custom_attribute/chaining_hit",duration:2,delay:0,parameters:{},merge_behavior:"merge"}

function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/macro with storage cartographer:custom_attributes

execute on attacker run scoreboard players set @s ca.chaining_hit_entropy 0