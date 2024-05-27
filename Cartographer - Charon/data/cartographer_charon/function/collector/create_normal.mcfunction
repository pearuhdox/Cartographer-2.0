function cartographer_charon:summon/collector

execute if block ~ ~-1 ~ #cartographer_core:can_raycast run setblock ~ ~-1 ~ glass

fill ~ ~ ~ ~ ~1 ~ air destroy

execute as @e[tag=ca.collector,tag=!ca.collector_checked,sort=nearest,limit=1,distance=..10] at @s run function cartographer_charon:collector/fill