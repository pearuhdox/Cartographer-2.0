tag @s add co_rotation_lock

scoreboard players operation @s co_send = $force ca.ench_var
scoreboard players operation @s co_send *= $-1 ca.CONSTANT
scoreboard players set @s co_y 4

execute on attacker run tag @s add ca.mob_target

execute as @s at @s facing entity @p[tag=ca.mob_target] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @s at @s run function motion:motion/push

execute on attacker run tag @s remove ca.mob_target
