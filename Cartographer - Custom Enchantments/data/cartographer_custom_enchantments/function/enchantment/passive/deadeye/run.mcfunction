execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"deadeye",type:"passive"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"deadeye",type:"passive"}

execute if entity @s[type=player] if predicate cartographer_core:player/sprinting run scoreboard players add @s ca.sprint_time_deadeye 1
execute if entity @s[type=player] unless predicate cartographer_core:player/sprinting if score @s ca.sprint_time_deadeye matches 1.. run scoreboard players remove @s ca.sprint_time_deadeye 1

execute unless entity @s[type=player] if entity @s[tag=ca.mob_is_sprinting] run scoreboard players add @s ca.sprint_time_deadeye 1
execute unless entity @s[type=player] unless entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_time_deadeye matches 1.. run scoreboard players remove @s ca.sprint_time_deadeye 1

execute if score @s ca.sprint_time_deadeye matches 10.. run function cartographer_custom_enchantments:enchantment/passive/deadeye/do