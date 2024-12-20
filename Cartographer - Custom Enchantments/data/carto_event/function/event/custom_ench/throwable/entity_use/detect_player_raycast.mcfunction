execute positioned ~-0.5 ~-1.5 ~-0.5 as @a[dx=0,dy=2,dz=0] run tag @s add ca.indicator_warning
execute positioned ~-0.5 ~-1.5 ~-0.5 as @a[dx=0,dy=2,dz=0] run scoreboard players set @s ca.warning_time 5

#particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s ca.raycast 1

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/throwable/entity_use/detect_player_raycast