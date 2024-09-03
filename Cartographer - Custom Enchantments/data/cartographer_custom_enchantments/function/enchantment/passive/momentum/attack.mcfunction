scoreboard players operation $previous ca.momentum_stack = @s ca.momentum_stack

scoreboard players add @s ca.momentum_stack 200

execute if score @s ca.momentum_stack matches 10001.. run scoreboard players set @s ca.momentum_stack 10000
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/momentum/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/momentum/tier_up_vfx