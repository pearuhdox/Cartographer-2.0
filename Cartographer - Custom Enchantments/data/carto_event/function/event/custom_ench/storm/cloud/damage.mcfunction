$damage @s $(damage) cartographer_custom_enchantments:enchant_damage by $(target)
damage @s 0.001 cartographer_custom_enchantments:enchant_damage

tag @s add ca.storm_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/storm/cooldown",duration:6,delay:000,parameters:{},merge_behavior:"none"}
