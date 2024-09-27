execute unless entity @s[tag=ca.ench_ran_flag_storm] run function cartographer_custom_enchantments:enchantment/passive/storm/run

execute unless entity @s[tag=ca.ench_ran_flag_storm] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"storm"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_storm] run tag @s add ca.ench_ran_flag_storm