$damage @s $(damage) cartographer_custom_enchantments:opportunist_damage by $(owner)

$execute if data storage carto_event current[-1].parameters.status_info.enchantment_hit.self as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"carto_event",path:"current[-1].parameters.status_info",action:"enchantment_hit",type:"self"}
execute if data storage carto_event current[-1].parameters.status_info.enchantment_hit.target run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"carto_event",path:"current[-1].parameters.status_info",action:"enchantment_hit",type:"target"}

$execute as $(target) store result score @s ca.raycast run data get storage carto_event current[-1].parameters.length 10
$execute anchored eyes positioned ^ ^ ^ facing entity $(target) feet positioned ^ ^ ^0.1 as $(target) run function carto_event:event/custom_ench/soulfire/flames/raycast_vfx

tag @s add ca.soulfire_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/cooldown",duration:9,delay:0,parameters:{},merge_behavior:"none"}
