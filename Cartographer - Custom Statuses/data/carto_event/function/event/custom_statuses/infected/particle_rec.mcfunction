particle dust{color:[0.224,0.188,0.278],scale:2} ~ ~ ~ 0 0 0 0 1 normal

scoreboard players remove $infect_particle ca.infect_raycast 1
#$execute as $(origin) if entity @s[distance=..0.1] run scoreboard players set $infect_particle ca.infect_raycast 0

$execute if score $infect_particle ca.infect_raycast matches 1.. facing $(pos_x) $(pos_y) $(pos_z) positioned ^ ^ ^0.25 run function carto_event:event/custom_statuses/infected/particle_rec with storage cartographer_custom_statuses:infected_proc data 