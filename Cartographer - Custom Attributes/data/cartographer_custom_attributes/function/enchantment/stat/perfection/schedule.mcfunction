execute unless entity @s[tag=ca.ench_ran_flag_perfection] run function cartographer_custom_attributes:enchantment/stat/perfection/run

execute unless entity @s[tag=ca.ench_ran_flag_perfection] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"perfection"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_perfection] run tag @s add ca.ench_ran_flag_perfection