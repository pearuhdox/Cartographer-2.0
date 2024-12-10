$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.333,0.114,0.290,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_execute] run function carto_event:event/custom_statuses/execute/first_tick

$execute as $(target) at @s run scoreboard players operation @s ca.execute_hp_past = @s ca.execute_hp
$execute as $(target) at @s store result score @s ca.execute_hp run data get entity @s Health 10

scoreboard players set $percent ca.execute_hp 0
scoreboard players set $percent_hp ca.execute_hp 0

$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp run scoreboard players set $percent ca.execute_hp $(percentage)

$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp store result score $percent_hp ca.execute_hp run attribute @s minecraft:max_health get 10
$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp run scoreboard players operation $percent_hp ca.execute_hp *= $percent ca.execute_hp
$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp run scoreboard players operation $percent_hp ca.execute_hp /= $100 ca.CONSTANT

$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp if score @s ca.execute_hp <= $percent_hp ca.execute_hp if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp if score @s ca.execute_hp <= $percent_hp ca.execute_hp run function carto_event:event/custom_statuses/execute/do


$execute as $(target) at @s run tag @s remove ca.has_custom_status_execute
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_execute

$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp if score @s ca.execute_hp <= $percent_hp ca.execute_hp run tag @s remove ca.has_custom_status_execute
$execute as $(target) at @s if score @s ca.execute_hp_past > @s ca.execute_hp if score @s ca.execute_hp <= $percent_hp ca.execute_hp run return 0

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_execute
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1