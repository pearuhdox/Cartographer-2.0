tag @s remove ca.remove_stealth_player
tag @s remove ca.has_custom_status_stealth_player

$execute if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_statuses/stealth/player",duration:120,delay:0,parameters:{visual_seconds:6,visible_range:$(value),tick_command:""},merge_behavior:"custom"}


$execute unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_statuses/stealth/mob",duration:120,delay:0,parameters:{reveal_range:$(value),keep_equipment:0,particle_density:3,particle_spread:1,tick_command:""},merge_behavior:"custom"}
