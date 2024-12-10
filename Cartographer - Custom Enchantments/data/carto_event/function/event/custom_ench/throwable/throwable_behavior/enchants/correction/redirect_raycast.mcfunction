scoreboard players remove @s ca.raycast 1

#particle minecraft:block_marker{block_state:"barrier"} ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

execute if score $type ca.ench_correction_lvl matches 1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#cartographer_core:affected_by_carto,dx=0,dy=0,dz=0,limit=1,sort=nearest] positioned ~0.5 ~0.5 ~0.5 positioned as @s run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/redirect_finish
execute if score $type ca.ench_correction_lvl matches 2 positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] positioned ~0.5 ~0.5 ~0.5 positioned as @s run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/redirect_finish

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/redirect_raycast
