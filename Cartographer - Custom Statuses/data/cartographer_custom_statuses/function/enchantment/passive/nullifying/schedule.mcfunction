execute unless entity @s[tag=ca.ench_ran_flag_nullifying] run function cartographer_custom_statuses:enchantment/passive/nullifying/run

execute unless entity @s[tag=ca.ench_ran_flag_nullifying] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"nullifying"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_nullifying] run tag @s add ca.ench_ran_flag_nullifying