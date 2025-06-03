scoreboard players operation $previous ca.storm_stack = @s ca.storm_stack
execute if entity @s[type=player] if predicate cartographer_core:periodic_tick/5 unless entity @s[tag=ca.energized_calculated] run function cartographer_core:handlers/energized/calculate
execute if entity @s[type=player] if predicate cartographer_core:periodic_tick/5 if entity @s[tag=ca.energized_calculated] run scoreboard players operation @s ca.storm_stack += @s ca.energized_stack

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 unless entity @s[tag=ca.energized_calculated] run function cartographer_core:handlers/energized/calculate
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 if entity @s[tag=ca.energized_calculated] run scoreboard players operation @s ca.storm_stack += @s ca.energized_stack

execute if score @s ca.storm_stack matches 2501.. run scoreboard players set @s ca.storm_stack 2500
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/storm/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/storm/tier_up_vfx

execute if entity @s[type=player] if score @s ca.storm_stack matches 1500.. if predicate cartographer_core:periodic_tick/5 run function cartographer_core:handlers/energized/vfx
execute unless entity @s[type=player] if score @s ca.storm_stack matches 1500.. if predicate cartographer_core:periodic_tick/5 run function cartographer_core:handlers/energized/vfx_entity

#execute if score @s ca.ench_storm_lvl matches 1.. unless score @s ca.storm_delay matches 0.. run scoreboard players set @s ca.storm_delay 0