execute unless entity @s[tag=ca.ench_ran_flag_extended] run function cartographer_custom_attributes:enchantment/stat/extended/run

execute unless entity @s[tag=ca.ench_ran_flag_extended] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"extended"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_extended] run tag @s add ca.ench_ran_flag_extended