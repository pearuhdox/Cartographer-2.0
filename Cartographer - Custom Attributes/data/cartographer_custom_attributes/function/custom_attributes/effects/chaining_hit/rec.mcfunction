$function carto_event:api/create_single_entity_event {event:"custom_attribute/chaining_hit/damage",duration:1,delay:0,parameters:{chaining_hit_damage:$(chaining_hit_damage),chaining_hit_damage_type:"$(chaining_hit_damage_type)",chaining_owner:"$(chaining_owner)"},merge_behavior:"merge"}

scoreboard players remove $count ca.chaining_hit_var 1

scoreboard players set @s ca.raycast 50

$execute positioned as $(chaining_previous) anchored eyes as @s facing entity @s eyes positioned ^ ^ ^0.5 run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/raycast with storage cartographer:custom_attributes

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_attributes chaining_previous set from storage gu:main out


tag @s add ca.was_chained
function carto_event:api/create_single_entity_event {event:"custom_attribute/chaining_hit",duration:3,delay:0,parameters:{},merge_behavior:"merge"}

execute unless score $extra_count ca.chaining_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/reduce_damage
execute if score $extra_count ca.chaining_hit_var matches 1.. run scoreboard players remove $extra_count ca.chaining_hit_var 1

$execute if score $count ca.chaining_hit_var matches 1.. if entity @s[type=player] as @e[type=player,distance=0.1..$(chaining_range),limit=1,sort=nearest,tag=!ca.was_chained] at @s run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/rec with storage cartographer:custom_attributes
$execute if score $count ca.chaining_hit_var matches 1.. unless entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=0.1..$(chaining_range),limit=1,sort=nearest,tag=!ca.was_chained] at @s run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/rec with storage cartographer:custom_attributes