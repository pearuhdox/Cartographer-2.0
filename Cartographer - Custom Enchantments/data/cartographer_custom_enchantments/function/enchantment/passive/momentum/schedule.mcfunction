execute unless entity @s[tag=ca.ench_ran_flag_momentum] run function cartographer_custom_enchantments:enchantment/passive/momentum/run

execute unless entity @s[tag=ca.ench_ran_flag_momentum] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"momentum"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_momentum] run tag @s add ca.ench_ran_flag_momentum