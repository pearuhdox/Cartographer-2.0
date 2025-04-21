tag @s remove ca.ambushing_return
tag @s remove ca.ambushing_spawner

execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run tag @s add ca.ambushing_charging

execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless score @s ca.ambushing_time matches -9999.. run function carto_event:event/custom_ench/ambushing/set_charge_time

execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] if predicate cartographer_custom_enchantments:has/ambushing/spawner run tag @s add ca.ambushing_spawner
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] if predicate cartographer_custom_enchantments:has/ambushing/return run tag @s add ca.ambushing_return
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run scoreboard players add @s ca.ambushing_time 1
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run scoreboard players add @s ca.channeling_time 1
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_ambushing] run function carto_event:api/create_single_entity_event {event:"custom_ench/ambushing",duration:5,delay:0,parameters:{},merge_behavior:"merge"}

advancement revoke @s only cartographer_custom_enchantments:using_ambushing