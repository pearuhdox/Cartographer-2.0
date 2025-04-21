execute unless entity @s[tag=ca.has_custom_status_silenced] run tag @s add ca.throwable_aiming

execute unless entity @s[tag=ca.has_custom_status_silenced] if score @s ca.ench_throwable_lvl matches 1.. unless score @s ca.throwable_time matches -9999.. run function carto_event:event/custom_ench/throwable/set_charge_time
execute unless entity @s[tag=ca.has_custom_status_silenced] if score @s ca.ench_throwable_lvl matches 1.. if score @s ca.throwable_time matches -9999.. run scoreboard players add @s ca.throwable_time 1
execute unless entity @s[tag=ca.has_custom_status_silenced] if score @s ca.ench_throwable_lvl matches 1.. if score @s ca.throwable_time matches -9999.. run scoreboard players add @s ca.channeling_time 1

execute unless entity @s[tag=ca.has_custom_status_silenced] unless score @s ca.throwable_cooldown matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/throwable",duration:5,delay:0,parameters:{},merge_behavior:"merge"}

advancement revoke @s only cartographer_custom_enchantments:using_throwable