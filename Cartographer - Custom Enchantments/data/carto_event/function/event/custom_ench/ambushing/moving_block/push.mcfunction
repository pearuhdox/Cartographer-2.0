tag @s add co_rotation_lock

scoreboard players set @s co_send -6
scoreboard players set @s co_y 3

$rotate @s facing entity $(victim)
function motion:motion/push

tag @s remove co_rotation_lock

playsound minecraft:entity.wind_charge.wind_burst player @a[distance=..12] ~ ~ ~ 0.75 1.5
particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force