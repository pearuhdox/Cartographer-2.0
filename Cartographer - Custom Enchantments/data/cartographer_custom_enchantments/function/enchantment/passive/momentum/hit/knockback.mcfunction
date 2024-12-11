tag @s add co_rotation_lock
rotate @s facing entity @n[tag=ca.momentum_owner] feet
tp @s ~ ~ ~ ~ 30
scoreboard players set @s co_send -5
scoreboard players set @s co_y 2
execute as @s at @s run function motion:motion/push
tag @s remove co_rotation_lock

$damage @s $(aoe) cartographer_custom_enchantments:enchant_damage_bypass by @n[tag=ca.momentum_owner]