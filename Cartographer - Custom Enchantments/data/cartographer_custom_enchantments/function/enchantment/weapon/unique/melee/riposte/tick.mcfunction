execute unless entity @s[tag=ca.has_custom_status_silenced] run tag @s add ca.riposte_blocking
execute unless entity @s[tag=ca.has_custom_status_silenced] run scoreboard players add @s ca.riposte_time 1
execute unless entity @s[tag=ca.has_custom_status_silenced] run function carto_event:api/create_single_entity_event {event:"custom_ench/riposte",duration:5,delay:0,parameters:{},merge_behavior:"merge"}

advancement revoke @s only cartographer_custom_enchantments:using_riposte