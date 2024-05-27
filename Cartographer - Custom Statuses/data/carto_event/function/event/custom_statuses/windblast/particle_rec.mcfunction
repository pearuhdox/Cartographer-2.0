particle dust{color:[1.000,1.000,1.000],scale:1.5} ~ ~ ~ 0 0 0 0 1 normal
execute if score $windblast_particle ca.windblast_raycast matches 13.. run particle small_gust ~ ~ ~ 0.2 0.2 0.2 0 1 normal


scoreboard players remove $windblast_particle ca.windblast_raycast 1
$execute as $(original) if entity @s[distance=..0.1] run scoreboard players set $windblast_particle ca.windblast_raycast 0

$execute if score $windblast_particle ca.windblast_raycast matches 1.. facing entity $(original) eyes positioned ^ ^ ^0.25 run function carto_event:event/custom_statuses/windblast/particle_rec with storage cartographer_custom_statuses:windblast data