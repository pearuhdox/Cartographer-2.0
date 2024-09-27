$damage @s $(damage) cartographer_custom_enchantments:enchant_damage

tag @s add ca.quake_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/quake/cooldown",duration:8,delay:000,parameters:{},merge_behavior:"none"}
