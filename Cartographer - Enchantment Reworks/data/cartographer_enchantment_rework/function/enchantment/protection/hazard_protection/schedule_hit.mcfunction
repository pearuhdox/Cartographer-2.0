execute unless entity @s[tag=ca.ench_ran_flag_hazard_protection_hit] run function cartographer_enchantment_rework:enchantment/protection/hazard_protection/hit

execute if entity @s[type=player] run scoreboard players set @s ca.reset_flags 1

execute unless entity @s[type=player] unless entity @s[tag=ca.ench_ran_flag_hazard_protection_hit] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:0,parameters:{flag:"hazard_protection_hit"},merge_behavior:"merge"}
execute unless entity @s[tag=ca.ench_ran_flag_hazard_protection_hit] run tag @s add ca.ench_ran_flag_hazard_protection_hit