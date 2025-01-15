execute unless entity @s[tag=ca.has_custom_status_silenced] run tag @s add ca.throwable_aiming

execute unless entity @s[tag=ca.has_custom_status_silenced] unless score @s ca.ench_throwable_lvl matches 1.. unless score @s ca.throwable_time matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"throwable",type:"ranged"}
execute unless entity @s[tag=ca.has_custom_status_silenced] if score @s ca.ench_throwable_lvl matches 1.. run scoreboard players add @s ca.throwable_time 1

execute unless entity @s[tag=ca.has_custom_status_silenced] run function carto_event:api/create_single_entity_event {event:"custom_ench/throwable",duration:5,delay:000,parameters:{},merge_behavior:"merge"}

advancement revoke @s only cartographer_custom_enchantments:using_throwable