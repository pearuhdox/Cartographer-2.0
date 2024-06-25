$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.043,0.380,0.220,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_brittle] run function carto_event:event/custom_statuses/exposed/first_tick

$execute as $(target) at @s run scoreboard players operation @s ca.exposed_hp_past = @s ca.exposed_hp
$execute as $(target) at @s store result score @s ca.exposed_hp run data get entity @s Health 10

$execute as $(target) at @s if score @s ca.exposed_hp_past > @s ca.exposed_hp run scoreboard players set $percent ca.exposed_hp $(percentage)
$execute as $(target) at @s if score @s ca.exposed_hp_past > @s ca.exposed_hp run function carto_event:event/custom_statuses/exposed/difference

$execute as $(target) at @s if score @s ca.exposed_hp_past > @s ca.exposed_hp unless score @s ca.exposed_cdl matches 1.. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
$execute as $(target) at @s if score @s ca.exposed_hp_past > @s ca.exposed_hp unless score @s ca.exposed_cdl matches 1.. positioned ~ ~1 ~ run function carto_event:event/custom_statuses/exposed/damage with storage cartographer_custom_statuses:exposed data

#$execute as $(target) at @s run scoreboard players remove @s ca.exposed_cdl 1

$execute as $(target) at @s run tag @s remove ca.has_custom_status_exposed
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_exposed

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_exposed
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1