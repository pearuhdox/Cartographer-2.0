$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.965,0.965,0.965,0.5]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/100 run playsound minecraft:ambient.warped_forest.mood hostile @a[distance=..24] ~ ~ ~ 2 2

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_stealth_mob] run function carto_event:event/custom_statuses/stealth/mob/start with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 21.. run effect give @s resistance 1 4 true
$execute as $(target) at @s if score duration= carto_event matches 21.. run effect give @s invisibility 1 1 true

$execute as $(target) at @s run tag @s remove ca.has_custom_status_stealth_mob
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_stealth_mob

$execute as $(target) at @s if score duration= carto_event matches 2.. run particle minecraft:smoke ~ ~ ~ $(particle_spread) 0.5 $(particle_spread) 0 $(particle_density) normal

scoreboard players set $end_stealth ca.status_var 0
$execute as $(target) at @s if entity @a[gamemode=!spectator,gamemode=!creative,distance=..$(reveal_range)] run function carto_event:event/custom_statuses/stealth/mob/end with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/stealth/mob/end with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[tag=ca.purged] run function carto_event:event/custom_statuses/stealth/mob/end with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:event/custom_statuses/stealth/mob/end with storage carto_event current[-1].parameters

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters


execute if score $end_stealth ca.status_var matches 1.. run return 0
return 1