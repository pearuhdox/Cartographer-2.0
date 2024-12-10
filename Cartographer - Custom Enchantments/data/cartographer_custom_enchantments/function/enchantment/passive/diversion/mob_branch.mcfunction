scoreboard players set $targeting ca.ench_var 0

execute on target if entity @s[type=player] run scoreboard players set $targeting ca.ench_var 1

execute if score $targeting ca.ench_var matches 1.. store result score $silent ca.ench_var run data get entity @s Silent

execute if score $targeting ca.ench_var matches 1.. unless score $silent ca.ench_var matches 1.. run data modify entity @s Silent set value 1b
execute if score $targeting ca.ench_var matches 1.. unless score $silent ca.ench_var matches 1.. run tag @s add ca.diversion_silent

execute if score $targeting ca.ench_var matches 1.. run tag @s add ca.diversion_distract
execute if score $targeting ca.ench_var matches 1.. run attribute @s follow_range modifier add ca.diversion_distract -256 add_value
