execute unless entity @s[tag=ca.ench_ran_flag_corruption] run function cartographer_custom_enchantments:enchantment/curse/corruption/run

execute unless entity @s[tag=ca.ench_ran_flag_corruption] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"corruption"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_corruption] run tag @s add ca.ench_ran_flag_corruption