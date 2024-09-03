scoreboard players operation $past_x ca.inertia_x = @s ca.inertia_x
scoreboard players operation $past_y ca.inertia_y = @s ca.inertia_y
scoreboard players operation $past_z ca.inertia_z = @s ca.inertia_z

execute store result score @s ca.inertia_x run data get entity @s Pos[0] 10
execute store result score @s ca.inertia_y run data get entity @s Pos[1] 10
execute store result score @s ca.inertia_z run data get entity @s Pos[2] 10

scoreboard players operation $diff_x ca.inertia_x = @s ca.inertia_x
scoreboard players operation $diff_y ca.inertia_y = @s ca.inertia_y
scoreboard players operation $diff_z ca.inertia_z = @s ca.inertia_z

scoreboard players operation $diff_x ca.inertia_x -= $past_x ca.inertia_x
scoreboard players operation $diff_y ca.inertia_y -= $past_y ca.inertia_y
scoreboard players operation $diff_z ca.inertia_z -= $past_z ca.inertia_z

scoreboard players operation $diff_x ca.inertia_x *= $diff_x ca.inertia_x
scoreboard players operation $diff_y ca.inertia_y *= $diff_y ca.inertia_y
scoreboard players operation $diff_z ca.inertia_z *= $diff_z ca.inertia_z

scoreboard players set $total_add ca.inertia_stack 0
scoreboard players operation $total_add ca.inertia_stack += $diff_x ca.inertia_x
scoreboard players operation $total_add ca.inertia_stack += $diff_y ca.inertia_y
scoreboard players operation $total_add ca.inertia_stack += $diff_z ca.inertia_z

scoreboard players operation $total_add ca.inertia_stack /= $3 ca.CONSTANT

scoreboard players operation $previous ca.inertia_stack = @s ca.inertia_stack

scoreboard players operation @s ca.inertia_stack += $total_add ca.inertia_stack

execute if score @s ca.inertia_stack matches 10001.. run scoreboard players set @s ca.inertia_stack 10000
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_vfx