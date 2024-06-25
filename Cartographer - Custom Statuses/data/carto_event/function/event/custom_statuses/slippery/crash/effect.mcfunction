$damage @s $(crash_damage) cartographer_custom_statuses:status_damage by $(owner)

tag @s add co_rotation_lock
$execute facing entity $(target) feet run tp @s ~ ~ ~ ~ 0

$scoreboard players set @s co_y $(crash_vertical_kb)
$scoreboard players set @s co_send -$(crash_horizontal_kb)
function motion:motion/push

tag @s remove co_rotation_lock