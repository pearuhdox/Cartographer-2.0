execute unless entity @s[tag=ca.ench_ran_flag_depth_strider] run function cartographer_custom_attributes:enchantment/vanilla/depth_strider/run

execute unless entity @s[tag=ca.ench_ran_flag_depth_strider] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"depth_strider"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_depth_strider] run tag @s add ca.ench_ran_flag_depth_strider