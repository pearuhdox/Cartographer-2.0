execute unless entity @s[tag=ca.ench_ran_flag_immovable] run function cartographer_custom_attributes:enchantment/stat/immovable/run

execute unless entity @s[tag=ca.ench_ran_flag_immovable] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"immovable"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_immovable] run tag @s add ca.ench_ran_flag_immovable