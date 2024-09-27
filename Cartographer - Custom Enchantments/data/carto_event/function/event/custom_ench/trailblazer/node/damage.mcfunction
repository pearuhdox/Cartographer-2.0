$damage @s $(damage) cartographer_custom_enchantments:enchant_damage by $(target)
$damage @s 0.001 cartographer_custom_enchantments:enchant_damage by $(target)

tag @s add ca.trailblazer_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/trailblazer/cooldown",duration:10,delay:000,parameters:{},merge_behavior:"none"}
