$execute as @e[type=!player,distance=..$(range)] at @s run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..16] ~ ~ ~ 1.5 2
playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 1 0.5

particle dust{color:[0.671,0.494,0.227],scale:3} ~ ~ ~ 0.75 0.3 0.75 1 15 normal
particle explosion ~ ~ ~ 0 0 0 0 1 normal

scoreboard players set @s ca.brittle_buildup 0
scoreboard players reset @s ca.brittle_hp
scoreboard players reset @s ca.brittle_past