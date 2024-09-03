$execute as $(target) at @s if entity @s[tag=ca.crit_arrow] facing $(prev_x) $(prev_y) $(prev_z) positioned ^ ^ ^0.75 run particle crit ~ ~ ~ 0 0 0 0 1
$execute as $(target) at @s if entity @s[tag=ca.crit_arrow] facing $(prev_x) $(prev_y) $(prev_z) positioned ^ ^ ^1.5 run particle crit ~ ~ ~ 0 0 0 0 1
$execute as $(target) at @s run particle crit ~ ~ ~ 0 0 0 0 1

$execute as $(target) at @s run tag @s add ca.crit_arrow


$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.prev_x set from entity @s Pos[0]
$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.prev_y set from entity @s Pos[1]
$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.prev_z set from entity @s Pos[2]

$execute as $(target) at @s if entity @s[nbt={inGround:1b}] run return 0
return 1