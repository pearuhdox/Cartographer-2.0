execute unless entity @s[tag=ca.ench_ran_flag_scavenger] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/holding/run

execute if entity @s[type=player] run scoreboard players set @s ca.reset_flags 1

execute unless entity @s[type=player] unless entity @s[tag=ca.ench_ran_flag_scavenger] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:0,parameters:{flag:"scavenger"},merge_behavior:"merge"}
execute unless entity @s[tag=ca.ench_ran_flag_scavenger] run tag @s add ca.ench_ran_flag_scavenger