$execute as @e[type=!player,distance=..$(range)] at @s run function carto_event:event/custom_statuses/brittle/detonate/damage_branch with storage carto_event current[-1].parameters

playsound minecraft:entity.blaze.hurt hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 0.65 0.5

particle dust{color:[0.671,0.494,0.227],scale:3} ~ ~ ~ 0.75 0.3 0.75 1 15 normal
particle explosion ~ ~ ~ 0 0 0 0 1 normal

scoreboard players set @s ca.brittle_buildup 0
scoreboard players reset @s ca.brittle_hp