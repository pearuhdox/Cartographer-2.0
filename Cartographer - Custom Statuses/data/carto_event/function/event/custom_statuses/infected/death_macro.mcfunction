data modify storage cartographer_custom_statuses:infected_proc data set value {}

data modify storage cartographer_custom_statuses:infected_proc data.pos_x set from entity @s Pos[0]
data modify storage cartographer_custom_statuses:infected_proc data.pos_y set from entity @s Pos[1]
data modify storage cartographer_custom_statuses:infected_proc data.pos_z set from entity @s Pos[2]

execute store result score $y_height ca.status_var run data get storage cartographer_custom_statuses:infected_proc data.pos_y
execute store result storage cartographer_custom_statuses:infected_proc data.pos_y double 1 run scoreboard players add $y_height ca.status_var 1

data modify storage cartographer_custom_statuses:infected_proc data.targets set from storage cartographer_custom_statuses:infected data.targets
data modify storage cartographer_custom_statuses:infected_proc data.range set from storage cartographer_custom_statuses:infected data.range
data modify storage cartographer_custom_statuses:infected_proc data.damage set from storage cartographer_custom_statuses:infected data.damage
data modify storage cartographer_custom_statuses:infected_proc data.death_dmg set from storage cartographer_custom_statuses:infected data.death_dmg
data modify storage cartographer_custom_statuses:infected_proc data.tick_rate set from storage cartographer_custom_statuses:infected data.tick_rate
data modify storage cartographer_custom_statuses:infected_proc data.duration set from storage cartographer_custom_statuses:infected data.duration
data modify storage cartographer_custom_statuses:infected_proc data.owner set from storage cartographer_custom_statuses:infected data.owner

$execute as @e[type=#cartographer_core:affected_by_carto,tag=!ca.has_custom_status_infected,distance=..$(range),sort=nearest,limit=$(targets)] at @s run function carto_event:event/custom_statuses/infected/death_branch with storage cartographer_custom_statuses:infected_proc data