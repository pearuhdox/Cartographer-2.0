$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by $(owner)
damage @s 0.001 cartographer_custom_enchantments:enchant_damage

$execute if data storage carto_event current[-1].parameters.status_info.enchantment_hit.self as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"carto_event",path:"current[-1].parameters.status_info",action:"enchantment_hit",type:"self"}
execute if data storage carto_event current[-1].parameters.status_info.enchantment_hit.target run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"carto_event",path:"current[-1].parameters.status_info",action:"enchantment_hit",type:"target"}

tag @s add ca.quake_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/quake/cooldown",duration:8,delay:0,parameters:{},merge_behavior:"none"}
