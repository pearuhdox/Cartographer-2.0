$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.690,0.369,0.153,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_harvest
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_harvest

scoreboard players set $spawn_treat ca.harvest_var 0
$execute as $(target) at @s if score duration= carto_event matches 2.. if entity @s[nbt={HurtTime:10s}] run function carto_event:event/custom_statuses/harvest/spawn_treat with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players set $fail_recovery ca.harvest_var $(fail_percent)
$execute as $(target) at @s if score duration= carto_event matches 1 if score $fail_recovery ca.harvest_var matches 1.. run function carto_event:event/custom_statuses/harvest/fail_recovery with storage carto_event current[-1].parameters

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score $spawn_treat ca.harvest_var matches 1.. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
$execute as $(target) at @s if score $spawn_treat ca.harvest_var matches 1.. run tag @s remove ca.has_custom_status_harvest
$execute as $(target) at @s if score $spawn_treat ca.harvest_var matches 1.. run scoreboard players set $execute ca.harvest_var $(execute)
$execute as $(target) at @s if score $spawn_treat ca.harvest_var matches 1.. if score $execute ca.harvest_var matches 1.. run function carto_event:event/custom_statuses/harvest/execute_roll with storage carto_event current[-1].parameters
$execute as $(target) at @s if score $spawn_treat ca.harvest_var matches 1.. run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_harvest
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1