execute unless entity @s[tag=ca.ench_ran_flag_tenacity_hit] run function cartographer_custom_enchantments:enchantment/passive/tenacity/hit

execute unless entity @s[tag=ca.ench_ran_flag_tenacity_hit] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"tenacity_hit"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_tenacity_hit] run tag @s add ca.ench_ran_flag_tenacity_hit