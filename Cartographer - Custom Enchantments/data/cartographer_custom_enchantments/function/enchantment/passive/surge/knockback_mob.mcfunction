tag @s add co_rotation_lock
rotate @s facing entity @n[tag=ca.surge_owner] feet
execute as @s at @s run tp @s ~ ~ ~ ~ 20
scoreboard players set @s co_send -2
scoreboard players set @s co_y 4
execute as @s at @s run function motion:motion/push
tag @s remove co_rotation_lock