tag @s add co_rotation_lock
$execute facing entity $(target) feet run tp @s ~ ~ ~ ~ 0

$scoreboard players set @s co_y $(grasp_vertical)
$scoreboard players set @s co_send $(grasp_horizontal)
execute as @s at @s run function motion:motion/push

tag @s remove co_rotation_lock