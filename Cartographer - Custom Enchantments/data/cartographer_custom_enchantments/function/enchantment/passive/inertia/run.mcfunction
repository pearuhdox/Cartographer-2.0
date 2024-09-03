execute if entity @s[type=player] if predicate cartographer_core:periodic_tick/5 run function cartographer_custom_enchantments:enchantment/passive/inertia/distance_check
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_custom_enchantments:enchantment/passive/inertia/distance_check

execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"inertia",type:"passive"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",enchantment:"inertia",type:"passive"}