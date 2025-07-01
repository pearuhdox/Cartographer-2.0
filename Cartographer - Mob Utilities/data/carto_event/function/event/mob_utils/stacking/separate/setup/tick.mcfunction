scoreboard players set $linked ca.stack_var 0
$execute as $(target) at @s if entity @s[tag=ca.stack_linked] run scoreboard players set $linked ca.stack_var 1

$execute as $(target) at @s run function carto_event:event/mob_utils/stacking/separate/setup/find_next_entity

$execute as $(target) at @s run function carto_event:event/mob_utils/stacking/separate/setup/rec with storage carto_event current[-1].parameters
$execute as $(target) at @s run tag @s remove ca.has_vehicle

scoreboard players set $timer ca.stack_var 40

return 0