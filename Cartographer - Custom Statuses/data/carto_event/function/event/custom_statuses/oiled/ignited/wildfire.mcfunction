$execute as @e[type=#bb:hostile,distance=0.25..$(wildfire_range),limit=$(wildfire_targets),sort=nearest] run data modify entity @s Fire set value $(wildfire_time)

$execute as @e[type=#bb:hostile,distance=0.25..$(wildfire_range),limit=$(wildfire_targets),sort=nearest] at @s run particle minecraft:trial_spawner_detection ~ ~0.2 ~ 0.3 0.2 0.3 0.03 25 normal