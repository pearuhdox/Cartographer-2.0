execute unless entity @s[tag=ca.ench_ran_flag_aqua_affinity] run function cartographer_custom_attributes:enchantment/vanilla/aqua_affinity/run

execute if entity @s[type=player] run scoreboard players set @s ca.reset_flags 1

execute unless entity @s[type=player] unless entity @s[tag=ca.ench_ran_flag_aqua_affinity] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:0,parameters:{flag:"aqua_affinity"},merge_behavior:"merge"}
execute unless entity @s[tag=ca.ench_ran_flag_aqua_affinity] run tag @s add ca.ench_ran_flag_aqua_affinity