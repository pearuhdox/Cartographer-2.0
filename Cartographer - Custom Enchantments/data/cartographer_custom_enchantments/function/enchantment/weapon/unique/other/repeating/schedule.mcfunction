execute unless entity @s[tag=ca.ench_ran_flag_repeating] if predicate cartographer_custom_enchantments:has/repeating/mainhand unless items entity @s weapon.mainhand crossbow run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/consumable/run
execute unless entity @s[tag=ca.ench_ran_flag_repeating] if predicate cartographer_custom_enchantments:has/repeating/offhand unless items entity @s weapon.offhand crossbow run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/consumable/run

execute unless entity @s[tag=ca.ench_ran_flag_repeating] if predicate cartographer_custom_enchantments:has/repeating/mainhand if items entity @s weapon.mainhand crossbow run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/run
execute unless entity @s[tag=ca.ench_ran_flag_repeating] if predicate cartographer_custom_enchantments:has/repeating/offhand if items entity @s weapon.offhand crossbow run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/run

execute if entity @s[type=player] run scoreboard players set @s ca.reset_flags 1

execute unless entity @s[type=player] unless entity @s[tag=ca.ench_ran_flag_repeating] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"repeating"},merge_behavior:"merge"}
execute unless entity @s[tag=ca.ench_ran_flag_repeating] run tag @s add ca.ench_ran_flag_repeating