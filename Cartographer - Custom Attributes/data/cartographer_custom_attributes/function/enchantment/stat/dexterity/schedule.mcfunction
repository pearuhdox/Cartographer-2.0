execute unless entity @s[tag=ca.ench_ran_flag_dexterity] run function cartographer_custom_attributes:enchantment/stat/dexterity/run

execute unless entity @s[tag=ca.ench_ran_flag_dexterity] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"dexterity"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_dexterity] run tag @s add ca.ench_ran_flag_dexterity