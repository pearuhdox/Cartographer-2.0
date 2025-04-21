execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_lunging] run tag @s add ca.lunging_charging

execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless score @s ca.lunging_time matches -9999.. run function carto_event:event/custom_ench/lunging/set_charge_time

execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_lunging] run scoreboard players add @s ca.lunging_time 1
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_lunging] run scoreboard players add @s ca.channeling_time 1
execute unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.is_lunging] run function carto_event:api/create_single_entity_event {event:"custom_ench/lunging",duration:5,delay:0,parameters:{},merge_behavior:"merge"}

advancement revoke @s only cartographer_custom_enchantments:using_lunging