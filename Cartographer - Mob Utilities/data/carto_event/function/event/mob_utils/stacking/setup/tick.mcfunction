scoreboard players set $linked ca.stack_var 0
$execute as $(target) at @s if entity @s[tag=ca.stack_linked] run scoreboard players set $linked ca.stack_var 1

$execute as $(target) at @s unless entity @s[type=item_display] run scoreboard players set $offset ca.stack_var -2000
$execute as $(target) at @s run function carto_event:event/mob_utils/stacking/setup/rec
$execute as $(target) at @s run tag @s remove ca.has_vehicle

$execute as $(target) at @s run tag @s add ca.in_custom_stack
scoreboard players set $timer ca.stack_var 40

return 0