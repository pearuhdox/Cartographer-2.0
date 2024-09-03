$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.prev_x set from entity @s Pos[0]
$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.prev_y set from entity @s Pos[1]
$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.prev_z set from entity @s Pos[2]

scoreboard players set $landed ca.custom_trident 0
$execute as $(target) at @s on vehicle run scoreboard players set $landed ca.custom_trident 1

$execute as $(target) at @s unless entity @s[tag=ca.orient_custom_trident] on vehicle run function carto_event:event/custom_attribute/trident/water/save

$execute as $(target) at @s unless score $landed ca.custom_trident matches 0 if entity @s[tag=ca.orient_custom_trident] run tp @s ~ ~ ~ facing $(prev_x) $(prev_y) $(prev_z)

$execute as $(target) at @s if entity @s[tag=ca.orient_custom_trident] on vehicle unless predicate cartographer_core:world/in_water run function carto_event:event/custom_attribute/trident/water/save
$execute as $(target) at @s if entity @s[tag=ca.orient_custom_trident] on vehicle if predicate cartographer_core:world/in_water run function carto_event:event/custom_attribute/trident/water/reapply

$execute as $(target) at @s run tag @s add ca.orient_custom_trident

$execute as $(target) at @s on vehicle run data modify entity @s Air set value 1s


$execute as $(target) at @s if score $landed ca.custom_trident matches 0 run function carto_event:event/custom_attribute/trident/landed
$execute as $(target) at @s if score $landed ca.custom_trident matches 0 run return 0

return 1