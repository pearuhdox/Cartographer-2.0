execute store result score $efficiency ca.collapse_break_speed run data get entity @s item.components."minecraft:enchantments".minecraft:efficiency

execute if score $efficiency ca.collapse_break_speed matches 1.. run scoreboard players operation $efficiency ca.collapse_break_speed *= $efficiency ca.collapse_break_speed
execute if score $efficiency ca.collapse_break_speed matches 1.. run scoreboard players add $efficiency ca.collapse_break_speed 1
execute if score $efficiency ca.collapse_break_speed matches 1.. run scoreboard players operation $efficiency ca.collapse_break_speed *= $10 ca.CONSTANT

scoreboard players operation @s ca.collapse_break_speed += $efficiency ca.collapse_break_speed