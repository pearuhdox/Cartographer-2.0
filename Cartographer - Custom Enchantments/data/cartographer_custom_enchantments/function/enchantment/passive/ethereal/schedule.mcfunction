execute unless entity @s[tag=ca.ench_ran_flag_ethereal] run function cartographer_custom_enchantments:enchantment/passive/ethereal/run

execute unless entity @s[tag=ca.ench_ran_flag_ethereal] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"ethereal"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_ethereal] run tag @s add ca.ench_ran_flag_ethereal