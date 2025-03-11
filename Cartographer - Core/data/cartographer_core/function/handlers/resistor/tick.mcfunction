effect give @s resistance 1 9 true

execute unless score @s ca.resistor_frames matches 1.. if score @s ca.resistor_damage_amt matches 1.. run function cartographer_core:handlers/resistor/identify/master

scoreboard players set @s ca.resistor_damage_amt 0
scoreboard players set @s ca.resistor_fall_damage 0

execute if score @s ca.resistor_frames matches 1.. run scoreboard players remove @s ca.resistor_frames 1