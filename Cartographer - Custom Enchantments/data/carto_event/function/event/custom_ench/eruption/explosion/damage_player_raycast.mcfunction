scoreboard players remove @s ca.raycast 1

#particle minecraft:dust{color:[0.0,0.0,0.0],scale:2.0} ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set $muted_damage ca.ench_eruption_lvl 1

execute if entity @s[tag=!ca.eruption_cdl,dx=0,dy=0,dz=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0,dy=0,dz=0] run function carto_event:event/custom_ench/eruption/explosion/damage_player_branch with storage carto_event current[-1].parameters

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.1 run function carto_event:event/custom_ench/eruption/explosion/damage_player_raycast