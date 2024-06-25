$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.145,0.322,0.647,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_absorption
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_absorption

$scoreboard players set $tick ca.absorption_tick $(tick_count)

$execute as $(target) at @s unless score @s ca.absorption_tick matches 0.. run scoreboard players set @s ca.absorption_tick $(tick_rate)

$execute as $(target) at @s if score $tick ca.absorption_tick matches $(tick_rate).. run function carto_event:event/custom_statuses/absorption/apply with storage carto_event current[-1].parameters
$execute as $(target) at @s if score $tick ca.absorption_tick matches $(tick_rate).. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters


$execute if score $tick ca.absorption_tick matches $(tick_rate).. run scoreboard players set $tick ca.absorption_tick 0
scoreboard players add $tick ca.absorption_tick 1
execute store result storage carto_event current[-1].parameters.tick_count int 1 run scoreboard players get $tick ca.absorption_tick

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.purged] run tag @s remove ca.has_custom_status_absorption
$execute as $(target) at @s if entity @s[tag=ca.purged] run return 0
return 1