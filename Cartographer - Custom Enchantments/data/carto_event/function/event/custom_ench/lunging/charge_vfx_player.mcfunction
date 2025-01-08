execute if score @s ca.lunging_time matches 1 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.05
execute if score @s ca.lunging_time matches 2 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.1
execute if score @s ca.lunging_time matches 3 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.15
execute if score @s ca.lunging_time matches 4 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.2
execute if score @s ca.lunging_time matches 5 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.25
execute if score @s ca.lunging_time matches 6 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.3
execute if score @s ca.lunging_time matches 7 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.35
execute if score @s ca.lunging_time matches 8 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.4
execute if score @s ca.lunging_time matches 9 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.45
execute if score @s ca.lunging_time matches 10 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.5
execute if score @s ca.lunging_time matches 11 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.65
execute if score @s ca.lunging_time matches 12 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.7
execute if score @s ca.lunging_time matches 13 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.75
execute if score @s ca.lunging_time matches 14 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.8
execute if score @s ca.lunging_time matches 15 run playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.6 1.85
execute if score @s ca.lunging_time matches 15 run playsound minecraft:entity.blaze.hurt player @a[distance=..16] ~ ~ ~ 1 2

execute if score @s ca.lunging_time matches 4 run tag @s add ca.indicator_charging
execute if score @s ca.lunging_time matches 4 run scoreboard players set @s ca.charging_time 10