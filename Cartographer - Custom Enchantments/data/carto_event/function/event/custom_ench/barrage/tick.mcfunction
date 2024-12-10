$execute as $(target) at @s run scoreboard players set $mod ca.ench_barrage_lvl $(mod)
$execute as $(target) at @s store result score $time ca.ench_barrage_lvl run data get storage carto_event current[-1].parameters.time
$execute as $(target) at @s run scoreboard players add $time ca.ench_barrage_lvl 1


$execute as $(target) at @s if score $time ca.ench_barrage_lvl >= $mod ca.ench_barrage_lvl anchored eyes positioned ^ ^ ^-0.25 run function carto_event:event/custom_ench/barrage/pick_location with storage carto_event current[-1].parameters
$execute as $(target) at @s if score $time ca.ench_barrage_lvl >= $mod ca.ench_barrage_lvl run scoreboard players set $time ca.ench_barrage_lvl 0

$execute as $(target) at @s store result storage carto_event current[-1].parameters.time int 1 run scoreboard players get $time ca.ench_barrage_lvl
return 1