execute unless entity @s[tag=ca.ench_ran_flag_bracing] run function cartographer_custom_statuses:enchantment/passive/bracing/run

execute if entity @s[type=player] run scoreboard players set @s ca.reset_flags 1

execute unless entity @s[type=player] unless entity @s[tag=ca.ench_ran_flag_bracing] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"bracing"},merge_behavior:"merge"}
execute unless entity @s[tag=ca.ench_ran_flag_bracing] run tag @s add ca.ench_ran_flag_bracing