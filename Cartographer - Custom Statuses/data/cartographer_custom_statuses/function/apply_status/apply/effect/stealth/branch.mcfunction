execute if entity @s[type=player] run tag @s remove ca.remove_stealth_player
execute if entity @s[type=player] run tag @s remove ca.has_custom_status_stealth_player

execute if entity @s[type=!player] run tag @s remove ca.has_custom_status_stealth_mob

$execute if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_statuses/stealth/player",duration:$(duration),delay:000,parameters:{visual_seconds:$(visual_seconds),visible_range:$(visible_range),tick_command:""},merge_behavior:"custom"}

$execute if entity @s[type=!player] run function carto_event:api/create_single_entity_event {event:"custom_statuses/stealth/mob",duration:$(duration),delay:005,parameters:{reveal_range:$(visible_range),keep_armor:0,keep_weapons:0,particle_density:3,particle_spread:1,tick_command:""},merge_behavior:"custom"}