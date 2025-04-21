$damage @s $(damage) cartographer_custom_enchantments:throwable_damage by $(owner)

execute store result score $damage ca.ench_throwable_lvl run data get storage carto_event current[-1].parameters.damage 100

$execute as $(target) at @s run function carto_event:event/custom_ench/throwable/throwable_behavior/return_enchants
function carto_event:event/custom_ench/throwable/throwable_behavior/apply_enchant

$execute as $(target) at @s run function cartographer_custom_attributes:system/projectile_find/get_data

execute if score $lucky_hit_chance ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"throwable"}

execute if score $chaining_hit_chance ca.attr_apply_var matches 1.. unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"75",attack_type:"throwable"}

execute if score $restrike_hit_chance ca.attr_apply_var matches 1.. unless entity @s[tag=ca.was_restriked] run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"75",attack_type:"throwable"}


#execute if entity @s[type=end_crystal] at @s run summon snowball ~ ~0.65 ~ {Motion:[0.0,-10.0,0.0]}

tag @s add ca.throwable_hit
execute unless score $barrage ca.ench_value matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/throwable/entity_hit",duration:5,delay:0,parameters:{},merge_behavior:"none"}
execute if score $barrage ca.ench_value matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/throwable/entity_hit",duration:1,delay:0,parameters:{},merge_behavior:"none"}


scoreboard players set $hit_check ca.ench_throwable_lvl 1