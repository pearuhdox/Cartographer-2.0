execute unless entity @s[tag=ca.ench_ran_flag_shielding] run function cartographer_custom_statuses:enchantment/passive/shielding/run

execute unless entity @s[tag=ca.ench_ran_flag_shielding] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"shielding"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_shielding] run tag @s add ca.ench_ran_flag_shielding