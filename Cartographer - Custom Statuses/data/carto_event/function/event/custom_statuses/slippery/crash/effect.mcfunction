$damage @s $(crash_damage) cartographer_custom_statuses:status_damage by $(owner)

$scoreboard players add @s ca.slippery_crash_buffer $(crash_damage)
execute if score @s ca.slippery_crash_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.85,text:"-❤",color:"#2cec44",buffer_name:"oiled"}


tag @s add co_rotation_lock
$execute facing entity $(target) feet run tp @s ~ ~ ~ ~ 0

$scoreboard players set @s co_y $(crash_vertical_kb)
$scoreboard players set @s co_send -$(crash_horizontal_kb)
execute as @s at @s run function motion:motion/push


tag @s remove co_rotation_lock