

execute as @a[tag=ca.check_explosion_los,dx=0,dy=0,dz=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @a[tag=ca.check_explosion_los,dx=0,dy=0,dz=0] positioned ~0.9 ~0.9 ~0.9 run scoreboard players operation @s ca.explode_dist = $dist ca.raycast
execute as @a[tag=ca.check_explosion_los,limit=1,sort=nearest] if entity @s[tag=ca.has_los] run scoreboard players operation $dist ca.raycast = $max ca.raycast

execute unless block ~ ~ ~ #minecraft:air unless block ~ ~ ~ minecraft:water run scoreboard players operation $dist ca.raycast = $max ca.raycast

scoreboard players add $dist ca.raycast 1

#particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force

execute unless score $dist ca.raycast > $max ca.raycast positioned ^ ^ ^0.1 run function cartographer_mob_utils:custom_explosion/los/raycast