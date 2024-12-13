scoreboard players operation $previous ca.inertia_stack = @s ca.inertia_stack

execute if entity @s[type=player] run scoreboard players add @s ca.inertia_stack 75
execute unless entity @s[type=player] run scoreboard players add @s ca.inertia_stack 225

execute if score @s ca.inertia_stack matches 1501.. run scoreboard players set @s ca.inertia_stack 1500
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_vfx