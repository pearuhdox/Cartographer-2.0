playsound minecraft:entity.slime.death_small hostile @a[distance=..16] ~ ~ ~ 1 0.75
particle minecraft:item_slime ~ ~0.5 ~ 0.25 0.25 0.25 0.1 10 normal
particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0.1 20 normal

execute on passengers run kill @s
execute on attacker run damage @e[type=sheep,sort=nearest,limit=1,tag=ca.aberration_bomb] 1000 cartographer_core:true_damage by @s

scoreboard players set $death ca.ench_aberration_lvl 1