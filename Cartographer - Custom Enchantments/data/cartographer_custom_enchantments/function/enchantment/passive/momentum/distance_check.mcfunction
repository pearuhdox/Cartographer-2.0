scoreboard players operation $past_x ca.momentum_x = @s ca.momentum_x
scoreboard players operation $past_y ca.momentum_y = @s ca.momentum_y
scoreboard players operation $past_z ca.momentum_z = @s ca.momentum_z

execute store result score @s ca.momentum_x run data get entity @s Pos[0] 10
execute store result score @s ca.momentum_y run data get entity @s Pos[1] 10
execute store result score @s ca.momentum_z run data get entity @s Pos[2] 10

scoreboard players operation $diff_x ca.momentum_x = @s ca.momentum_x
scoreboard players operation $diff_y ca.momentum_y = @s ca.momentum_y
scoreboard players operation $diff_z ca.momentum_z = @s ca.momentum_z

scoreboard players operation $diff_x ca.momentum_x -= $past_x ca.momentum_x
scoreboard players operation $diff_y ca.momentum_y -= $past_y ca.momentum_y
scoreboard players operation $diff_z ca.momentum_z -= $past_z ca.momentum_z

scoreboard players operation $diff_x ca.momentum_x *= $diff_x ca.momentum_x
scoreboard players operation $diff_y ca.momentum_y *= $diff_y ca.momentum_y
scoreboard players operation $diff_z ca.momentum_z *= $diff_z ca.momentum_z

scoreboard players set $total_add ca.momentum_stack 0
scoreboard players operation $total_add ca.momentum_stack += $diff_x ca.momentum_x
scoreboard players operation $total_add ca.momentum_stack += $diff_y ca.momentum_y
scoreboard players operation $total_add ca.momentum_stack += $diff_z ca.momentum_z

#execute unless entity @s[type=player] run scoreboard players operation $total_add ca.momentum_stack *= $2 ca.CONSTANT

scoreboard players operation $previous ca.momentum_stack = @s ca.momentum_stack

scoreboard players operation @s ca.momentum_stack += $total_add ca.momentum_stack

execute unless entity @s[type=player] unless entity @s[tag=ca.momentum_started] run scoreboard players set @s ca.momentum_stack 0

execute if score @s ca.momentum_stack matches 10001.. run scoreboard players set @s ca.momentum_stack 10000
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/momentum/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/momentum/tier_up_vfx

execute unless entity @s[type=player] run tag @s add ca.momentum_started