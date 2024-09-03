execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"surge",type:"passive"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"surge",type:"passive"}

execute if entity @s[type=player] if predicate cartographer_core:player/sprinting unless entity @s[tag=ca.surge_inactive] unless score @s ca.sprint_time_surge matches 10.. run scoreboard players add @s ca.sprint_time_surge 1
execute if entity @s[type=player] unless predicate cartographer_core:player/sprinting if score @s ca.sprint_time_surge matches 1.. run scoreboard players remove @s ca.sprint_time_surge 1

#execute unless entity @s[type=player] if entity @s[tag=ca.mob_is_sprinting] unless entity @s[tag=ca.surge_inactive] unless score @s ca.sprint_time_surge matches 15.. run scoreboard players add @s ca.sprint_time_surge 1
#execute unless entity @s[type=player] unless entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_time_surge matches 1.. run scoreboard players remove @s ca.sprint_time_surge 1

execute if score @s ca.sprint_time_surge matches 1 run tag @s remove ca.surge_inactive

execute if score @s ca.sprint_time_surge matches 5.. run function cartographer_custom_enchantments:enchantment/passive/surge/do