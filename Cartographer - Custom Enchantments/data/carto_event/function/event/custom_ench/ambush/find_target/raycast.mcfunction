#execute if score @s ca.raycast matches ..20 run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s ca.raycast 1

scoreboard players set $found ca.ench_ambush_lvl 0

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#cartographer_core:hostile,dx=0,dy=0,dz=0,limit=1,sort=nearest] at @s run function carto_event:event/custom_ench/ambush/find_target/found

execute if score $found ca.ench_ambush_lvl matches 1.. run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/ambush/find_target/raycast