playsound minecraft:entity.slime.hurt_small hostile @a[distance=..16] ~ ~ ~ 1 0.75
particle minecraft:item_slime ~ ~0.5 ~ 0.25 0.25 0.25 0.1 10 normal

scoreboard players operation @s ca.aberration_time /= $2 ca.CONSTANT
execute if score @s ca.aberration_time matches ..4 run scoreboard players set @s ca.aberration_time 5