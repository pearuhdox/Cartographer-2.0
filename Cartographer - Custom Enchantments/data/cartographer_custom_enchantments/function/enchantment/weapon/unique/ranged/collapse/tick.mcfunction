
execute store result score $val ca.collapse_x run data get entity @s Motion[0] 1000
execute store result score $val ca.collapse_y run data get entity @s Motion[1] 1000
execute store result score $val ca.collapse_z run data get entity @s Motion[2] 1000

scoreboard players operation $val ca.collapse_break_speed = @s ca.collapse_break_speed

scoreboard players operation @s ca.collapse_x = $val ca.collapse_x
scoreboard players operation @s ca.collapse_y = $val ca.collapse_y
scoreboard players operation @s ca.collapse_z = $val ca.collapse_z

execute on passengers run scoreboard players operation @s ca.collapse_x = $val ca.collapse_x
execute on passengers run scoreboard players operation @s ca.collapse_y = $val ca.collapse_y
execute on passengers run scoreboard players operation @s ca.collapse_z = $val ca.collapse_z
execute on passengers run scoreboard players operation @s ca.collapse_break_speed = $val ca.collapse_break_speed
