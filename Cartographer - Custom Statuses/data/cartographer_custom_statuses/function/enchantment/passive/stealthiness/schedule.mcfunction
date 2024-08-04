execute unless entity @s[tag=ca.ench_ran_flag_stealthiness] run function cartographer_custom_statuses:enchantment/passive/stealthiness/run

execute unless entity @s[tag=ca.ench_ran_flag_stealthiness] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"stealthiness"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_stealthiness] run tag @s add ca.ench_ran_flag_stealthiness