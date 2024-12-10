$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @p[tag=ca.repulsion_owner]

tag @s add co_rotation_lock

scoreboard players operation @s co_send = $force ca.ench_var
scoreboard players operation @s co_send *= $-1 ca.CONSTANT
scoreboard players set @s co_y 4

playsound minecraft:entity.breeze.shoot player @a[distance=..16] ~ ~ ~ 0.3 1.5
particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force

execute as @s at @s facing entity @p[tag=ca.repulsion_owner] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @s at @s run function motion:motion/push