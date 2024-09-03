scoreboard players operation $previous ca.inertia_stack = @s ca.inertia_stack

scoreboard players add @s ca.inertia_stack 200

execute if score @s ca.inertia_stack matches 10001.. run scoreboard players set @s ca.inertia_stack 10000
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_vfx