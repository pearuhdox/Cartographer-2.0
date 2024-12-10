tag @s add co_rotation_lock


scoreboard players operation @s co_send = $force ca.ench_var
scoreboard players operation @s co_send *= $-1 ca.CONSTANT
scoreboard players set @s co_y 4

execute as @s at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @s at @s run function motion:motion/push