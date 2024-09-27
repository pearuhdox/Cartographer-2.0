execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"trailblazer",type:"passive"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"trailblazer",type:"passive"}

execute if entity @s[type=player] if predicate cartographer_core:player/sprinting run scoreboard players add @s ca.sprint_dist_trailblazer 1
execute if entity @s[type=player] unless predicate cartographer_core:player/sprinting if score @s ca.sprint_dist_trailblazer matches 150.. run scoreboard players set @s ca.sprint_dist_trailblazer 0

execute unless entity @s[type=player] if entity @s[tag=ca.mob_is_sprinting] run scoreboard players add @s ca.sprint_dist_trailblazer 10
execute unless entity @s[type=player] unless entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_dist_trailblazer matches 150.. run scoreboard players set @s ca.sprint_dist_trailblazer 0

execute if entity @s[type=player] if predicate cartographer_core:player/sprinting if score @s ca.sprint_dist_trailblazer matches 150.. run function cartographer_custom_enchantments:enchantment/passive/trailblazer/do
execute unless entity @s[type=player] if entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_dist_trailblazer matches 150.. run function cartographer_custom_enchantments:enchantment/passive/trailblazer/do