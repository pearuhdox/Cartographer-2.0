$execute as $(target) at @s if entity @s[tag=ca.block_frozen] run return 0

$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.678,0.894,1.000,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle snowflake ~ ~ ~ 0.1 0.4 0.1 0.01 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_frozen] run function carto_event:event/custom_statuses/frozen/branch/first_tick

scoreboard players set $shatter_frozen ca.status_var 0

$execute as $(target) at @s run scoreboard players operation @s ca.frozen_hp_past = @s ca.frozen_hp
$execute as $(target) at @s store result score @s ca.frozen_hp run data get entity @s Health 10
$execute as $(target) at @s run scoreboard players set $shatter ca.frozen_hp $(shatter_damage)
$execute as $(target) at @s run scoreboard players operation $shatter ca.frozen_hp *= $10 ca.CONSTANT

$execute as $(target) at @s if score @s ca.frozen_hp < @s ca.frozen_hp_past run function carto_event:event/custom_statuses/frozen/difference

$execute as $(target) at @s if score $shatter_frozen ca.status_var matches 1 run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/frozen",duration:$(block_duration),delay:5,parameters:{},merge_behavior:"none"}
$execute as $(target) at @s if score $shatter_frozen ca.status_var matches 1 if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
$execute as $(target) at @s if score $shatter_frozen ca.status_var matches 1 run function carto_event:event/custom_statuses/frozen/branch/shatter
$execute as $(target) at @s if score $shatter_frozen ca.status_var matches 1 run return 0


$execute as $(target) at @s if score duration= carto_event matches 1 unless score @s ca.frozen_ai matches 1.. run data modify entity @s NoAI set value 0b
$execute as $(target) at @s if score duration= carto_event matches 1 store result entity @s Fuse int 1 run scoreboard players get @s ca.frozen_fuse
$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players set @s ca.frozen_ai 0
$execute as $(target) at @s if score duration= carto_event matches 1 on passengers if entity @s[type=block_display,tag=ca.status_frozen_display] run function carto_event:event/custom_statuses/frozen/release
$execute as $(target) at @s if score duration= carto_event matches 1 if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/frozen",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}

$execute as $(target) at @s run tag @s remove ca.has_custom_status_frozen
$execute as $(target) at @s run tag @s remove ca.block_morphed
$execute as $(target) at @s run tag @s remove ca.block_confused
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.block_morphed
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.block_confused
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_frozen

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_frozen
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run function carto_event:event/custom_statuses/frozen/branch/shatter
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_frozen
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run function carto_event:event/custom_statuses/frozen/branch/shatter
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1