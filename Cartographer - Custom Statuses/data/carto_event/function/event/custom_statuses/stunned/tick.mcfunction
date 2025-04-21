$execute as $(target) at @s if entity @s[tag=ca.block_stunned] run return 0

$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.910,0.824,0.392,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_stunned] run function carto_event:event/custom_statuses/stunned/first_tick

$execute as $(target) at @s run scoreboard players set $stunned_remove ca.stunned_var 0
$execute as $(target) at @s if score @s ca.stunned_direction matches 360.. run scoreboard players remove @s ca.stunned_direction 360
data modify storage cartographer_custom_statuses:stunned data set value {}
$execute as $(target) at @s store result storage cartographer_custom_statuses:stunned data.rotation int 1 run scoreboard players add @s ca.stunned_direction 30


$execute as $(target) at @s run tag @s remove ca.has_custom_status_stunned
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_stunned

$execute as $(target) at @s run function carto_event:event/custom_statuses/stunned/vfx with storage cartographer_custom_statuses:stunned data
$execute as $(target) at @s run function carto_event:event/custom_statuses/stunned/attributes

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:event/custom_statuses/stunned/remove_effect with storage carto_event current[-1].parameters

$execute as $(target) at @s if score $stunned_remove ca.stunned_var matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/stunned",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if score $stunned_remove ca.stunned_var matches 1.. run return 0

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run function carto_event:event/custom_statuses/stunned/remove_effect with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/stunned",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run function carto_event:event/custom_statuses/stunned/remove_effect with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/stunned",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1
