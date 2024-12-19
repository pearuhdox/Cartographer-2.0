$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.122,0.122,0.137,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.applied_loop_sound] run stopsound @s master minecraft:ambient.warped_forest.loop
$execute as $(target) at @s unless entity @s[tag=ca.applied_loop_sound] run playsound minecraft:ambient.warped_forest.loop master @s ~ ~ ~ 10 1

$execute as $(target) at @s unless entity @s[tag=ca.applied_loop_sound] store result score $random ca.deafened_loop_time run random value 1..8

$execute as $(target) at @s run tag @s add ca.applied_loop_sound

$execute as $(target) at @s run tag @s remove ca.has_custom_status_deafened
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_deafened

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

#$execute as $(target) at @s run stopsound @s player
$execute as $(target) at @s run stopsound @s hostile
$execute as $(target) at @s run stopsound @s neutral
$execute as $(target) at @s run stopsound @s block

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.applied_loop_sound
$execute as $(target) at @s if score duration= carto_event matches 1 run stopsound @s master minecraft:ambient.warped_forest.loop

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_deafened
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_deafened
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1