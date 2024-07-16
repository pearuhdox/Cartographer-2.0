$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[1.000,0.875,0.749,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 0 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_grounded
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_grounded

$execute as $(target) at @s run function carto_event:event/custom_statuses/grounded/attributes

$execute as $(target) at @s if entity @s[type=#cartographer_core:can_fly] anchored feet positioned ^ ^ ^ if block ~ ~-0.8 ~ #cartographer_core:can_raycast run function carto_event:event/custom_statuses/grounded/teleport/start

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_grounded
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_grounded
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1