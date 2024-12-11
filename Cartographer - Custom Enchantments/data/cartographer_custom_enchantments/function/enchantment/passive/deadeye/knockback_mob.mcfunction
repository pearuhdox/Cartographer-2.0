tag @s add co_rotation_lock
rotate @s facing entity @n[tag=ca.deadeye_owner] feet
execute as @s at @s run tp @s ~ ~ ~ ~ 20
scoreboard players set @s co_send -4
scoreboard players set @s co_y 2
execute as @s at @s run function motion:motion/push
tag @s remove co_rotation_lock