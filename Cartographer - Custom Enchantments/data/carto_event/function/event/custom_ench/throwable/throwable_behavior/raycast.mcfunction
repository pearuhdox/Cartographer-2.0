scoreboard players remove @s ca.raycast 1

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

scoreboard players set $hit_check ca.ench_throwable_lvl 0
execute if entity @s[tag=ca.player_owned] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#cartographer_core:affected_by_carto,tag=!ca.throwable_hit,dx=0,dy=0,dz=0,limit=1,sort=nearest] at @s run function carto_event:event/custom_ench/throwable/throwable_behavior/damage with storage carto_event current[-1].parameters
execute unless entity @s[tag=ca.player_owned] positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!ca.throwable_hit,dx=0,dy=0,dz=0,limit=1,sort=nearest] at @s run function carto_event:event/custom_ench/throwable/throwable_behavior/damage with storage carto_event current[-1].parameters

execute if score $hit_check ca.ench_throwable_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/hit_entity with storage carto_event current[-1].parameters

#Block Hit

$execute positioned ~$(x_step) ~$(y_step) ~$(z_step) unless block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/throwable/throwable_behavior/hit_block with storage carto_event current[-1].parameters
$execute positioned ~$(x_step) ~$(y_step) ~$(z_step) if block ~ ~ ~ #cartographer_core:can_raycast positioned ~$(x_step) ~$(y_step) ~$(z_step) unless block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/throwable/throwable_behavior/hit_block with storage carto_event current[-1].parameters

$execute if score @s ca.raycast matches 1.. positioned ~$(x_step) ~$(y_step) ~$(z_step) run function carto_event:event/custom_ench/throwable/throwable_behavior/raycast with storage carto_event current[-1].parameters