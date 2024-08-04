execute unless entity @s[tag=ca.ench_ran_flag_agility] run function cartographer_custom_attributes:enchantment/stat/agility/run

execute unless entity @s[tag=ca.ench_ran_flag_agility] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"agility"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_agility] run tag @s add ca.ench_ran_flag_agility