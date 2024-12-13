$damage @s $(damage) cartographer_custom_enchantments:throwable_damage by $(owner)

$execute as $(target) at @s run function carto_event:event/custom_ench/throwable/throwable_behavior/return_enchants
function carto_event:event/custom_ench/throwable/throwable_behavior/apply_enchant

#execute if entity @s[type=end_crystal] at @s run summon snowball ~ ~0.65 ~ {Motion:[0.0,-10.0,0.0]}

tag @s add ca.throwable_hit
execute unless score $barrage ca.ench_value matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/throwable/entity_hit",duration:5,delay:000,parameters:{},merge_behavior:"none"}
execute if score $barrage ca.ench_value matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/throwable/entity_hit",duration:1,delay:000,parameters:{},merge_behavior:"none"}


scoreboard players set $hit_check ca.ench_throwable_lvl 1