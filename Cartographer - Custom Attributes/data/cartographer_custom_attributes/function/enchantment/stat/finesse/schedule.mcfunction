execute unless entity @s[tag=ca.ench_ran_flag_finesse] run function cartographer_custom_attributes:enchantment/stat/finesse/run

execute unless entity @s[tag=ca.ench_ran_flag_finesse] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"finesse"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_finesse] run tag @s add ca.ench_ran_flag_finesse