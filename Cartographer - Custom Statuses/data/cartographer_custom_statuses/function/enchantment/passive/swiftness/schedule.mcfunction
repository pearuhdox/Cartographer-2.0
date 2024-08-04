execute unless entity @s[tag=ca.ench_ran_flag_swiftness] run function cartographer_custom_statuses:enchantment/passive/swiftness/run

execute unless entity @s[tag=ca.ench_ran_flag_swiftness] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"swiftness"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_swiftness] run tag @s add ca.ench_ran_flag_swiftness