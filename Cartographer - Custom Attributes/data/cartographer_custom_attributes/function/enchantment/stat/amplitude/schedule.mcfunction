execute unless entity @s[tag=ca.ench_ran_flag_amplitude] run function cartographer_custom_attributes:enchantment/stat/amplitude/run

execute unless entity @s[tag=ca.ench_ran_flag_amplitude] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"amplitude"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_amplitude] run tag @s add ca.ench_ran_flag_amplitude