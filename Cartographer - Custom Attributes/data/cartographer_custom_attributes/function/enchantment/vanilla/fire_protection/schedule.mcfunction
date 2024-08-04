execute unless entity @s[tag=ca.ench_ran_flag_fire_protection] run function cartographer_custom_attributes:enchantment/vanilla/fire_protection/run

execute unless entity @s[tag=ca.ench_ran_flag_fire_protection] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"fire_protection"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_fire_protection] run tag @s add ca.ench_ran_flag_fire_protection