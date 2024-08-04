execute unless entity @s[tag=ca.ench_ran_flag_swift_sneak] run function cartographer_custom_attributes:enchantment/vanilla/swift_sneak/run

execute unless entity @s[tag=ca.ench_ran_flag_swift_sneak] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"swift_sneak"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_swift_sneak] run tag @s add ca.ench_ran_flag_swift_sneak