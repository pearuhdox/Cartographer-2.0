execute unless entity @s[tag=ca.ench_ran_flag_bulwark] run function cartographer_custom_enchantments:enchantment/passive/bulwark/run

execute unless entity @s[tag=ca.ench_ran_flag_bulwark] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"bulwark"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_bulwark] run tag @s add ca.ench_ran_flag_bulwark