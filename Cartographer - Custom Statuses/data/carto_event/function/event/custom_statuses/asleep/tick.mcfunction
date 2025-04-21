$execute as $(target) at @s if entity @s[tag=ca.block_asleep] run return 0

$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.176,0.678,0.561,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_asleep] run function carto_event:event/custom_statuses/asleep/first_tick

$execute as $(target) at @s run scoreboard players set $asleep_remove ca.asleep_var 0

$execute as $(target) at @s run scoreboard players add @s ca.asleep_time 1

$execute as $(target) at @s run tag @s remove ca.has_custom_status_asleep
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_asleep

$execute as $(target) at @s if score @s ca.asleep_time matches $(drowsy_time) run particle dust{color:[0.176,0.678,0.561],scale:1.50} ~ ~1 ~ 0.3 0.3 0.3 1 10 normal
$execute as $(target) at @s if score @s ca.asleep_time matches $(drowsy_time) run playsound minecraft:entity.elder_guardian.ambient hostile @a[distance=..16] ~ ~ ~ 0.35 2
$execute as $(target) at @s if score @s ca.asleep_time matches $(drowsy_time).. run function carto_event:event/custom_statuses/asleep/sleep_effect/tick

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:event/custom_statuses/asleep/sleep_effect/remove_effect

$execute as $(target) at @s if score $asleep_remove ca.asleep_var matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/asleep",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if score $asleep_remove ca.asleep_var matches 1.. run return 0

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run function carto_event:event/custom_statuses/asleep/sleep_effect/remove_effect
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/asleep",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run function carto_event:event/custom_statuses/asleep/sleep_effect/remove_effect
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/asleep",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1
