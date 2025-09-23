
execute if entity @s[type=player] unless predicate cartographer_core:player/cant_crit if predicate cartographer_core:periodic_tick/5 run function cartographer_custom_enchantments:enchantment/passive/gravity/player_fall_test

execute unless entity @s[type=player] unless predicate cartographer_core:player/cant_crit if predicate cartographer_core:periodic_tick/5 run function cartographer_custom_enchantments:enchantment/passive/gravity/entity_fall_test
