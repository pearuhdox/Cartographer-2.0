scoreboard players remove @s ca.raycast 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=1,dz=0] run tag @s add ca.lunging_warn

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function carto_event:event/custom_ench/lunging/entity_use/detect_player/recurse