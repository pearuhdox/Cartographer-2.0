execute unless entity @s[tag=ca.ench_ran_flag_inertia_hit] run function cartographer_custom_enchantments:enchantment/passive/inertia/hit

execute unless entity @s[tag=ca.ench_ran_flag_inertia_hit] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:0,parameters:{flag:"inertia_hit"},merge_behavior:"merge"}
execute unless entity @s[tag=ca.ench_ran_flag_inertia_hit] run tag @s add ca.ench_ran_flag_inertia_hit