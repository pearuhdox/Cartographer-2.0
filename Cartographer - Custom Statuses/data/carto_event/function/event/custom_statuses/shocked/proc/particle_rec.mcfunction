particle dust{color:[0.827,0.600,1.000],scale:1} ~ ~ ~ 0 0 0 0 1 normal

scoreboard players remove $shock_particle ca.shock_raycast 1
$execute as $(origin) if entity @s[distance=..0.1] run scoreboard players set $shock_particle ca.shock_raycast 0

$execute if score $shock_particle ca.shock_raycast matches 1.. facing entity $(origin) eyes positioned ^ ^ ^0.25 run function carto_event:event/custom_statuses/shocked/proc/particle_rec with storage cartographer_custom_statuses:shocked_proc data 