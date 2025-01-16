tag @s add co_rotation_lock
rotate @s facing entity @p[tag=ca.thorns_owner] feet
execute at @s run rotate @s ~ 0
scoreboard players set @s co_send -4
scoreboard players set @s co_y 3
execute as @s at @s run function motion:motion/push
tag @s remove co_rotation_lock
