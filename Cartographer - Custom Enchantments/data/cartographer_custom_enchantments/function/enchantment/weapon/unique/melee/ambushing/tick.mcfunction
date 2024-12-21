execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run tag @s add ca.ambushing_charging
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run scoreboard players add @s ca.ambushing_time 1
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run function carto_event:api/create_single_entity_event {event:"custom_ench/ambushing",duration:5,delay:000,parameters:{},merge_behavior:"merge"}

advancement revoke @s only cartographer_custom_enchantments:using_ambushing