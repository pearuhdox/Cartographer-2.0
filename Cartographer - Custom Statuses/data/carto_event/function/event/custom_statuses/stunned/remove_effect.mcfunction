attribute @s minecraft:follow_range modifier remove ca.stunned_follow_range
attribute @s minecraft:movement_speed modifier remove ca.stunned_speed
attribute @s minecraft:attack_damage modifier remove ca.stunned_damage

scoreboard players set $stunned_remove ca.stunned_var 1

tag @s remove ca.has_custom_status_stunned

$execute unless entity @s[tag=ca.cleansed] run function carto_event:api/create_single_entity_event {event:"custom_statuses/stunned/dazed",duration:$(dazed_time),delay:0,parameters:{recovery_duration:10,block_duration:200},merge_behavior:"custom"}
$execute unless entity @s[tag=ca.unstoppable] run function carto_event:api/create_single_entity_event {event:"custom_statuses/stunned/dazed",duration:$(dazed_time),delay:0,parameters:{recovery_duration:10,block_duration:200},merge_behavior:"custom"}