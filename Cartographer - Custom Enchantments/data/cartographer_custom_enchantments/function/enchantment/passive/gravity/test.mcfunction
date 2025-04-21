execute store result score $fall ca.gravity_var run data get entity @s fall_distance 10

execute if score $fall ca.gravity_var matches 15.. run scoreboard players set $check ca.gravity_var 1
execute if entity @s[tag=ca.can_gravity] run scoreboard players set $check ca.gravity_var 1