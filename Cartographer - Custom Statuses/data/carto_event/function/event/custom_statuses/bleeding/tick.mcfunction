$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.588,0.125,0.125,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_bleeding] unless entity @s[tag=ca.bleed_continue] as $(owner) at @s run function carto_event:event/custom_statuses/bleeding/modify_damage

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_bleeding
$execute as $(target) at @s if score duration= carto_event matches 2.. run scoreboard players set @s ca.bleed_amt $(amount)

$execute as $(target) at @s if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:bleeding data set value {}
$execute as $(target) at @s if score duration= carto_event matches 1 store result storage cartographer_custom_statuses:bleeding data.damage int 1 run scoreboard players get @s ca.bleed_amt
$execute as $(target) at @s if score duration= carto_event matches 1 store result storage cartographer_custom_statuses:bleeding data.damage_half int 0.5 run scoreboard players get @s ca.bleed_amt
$execute as $(target) at @s if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:bleeding data.tick_rate set from storage carto_event current[-1].parameters.tick_rate
$execute as $(target) at @s if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:bleeding data.owner set from storage carto_event current[-1].parameters.owner
$execute as $(target) at @s if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:bleeding data.tick_command set from storage carto_event current[-1].parameters.tick_command
$execute as $(target) at @s if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:bleeding data.proc_command set from storage carto_event current[-1].parameters.proc_command
$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:event/custom_statuses/bleeding/damage with storage cartographer_custom_statuses:bleeding data
$execute as $(target) at @s if score duration= carto_event matches 1 if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.has_custom_status_bleeding

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_bleeding
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1