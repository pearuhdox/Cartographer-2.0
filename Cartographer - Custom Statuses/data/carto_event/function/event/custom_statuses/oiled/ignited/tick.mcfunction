$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.176,0.157,0.212,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle soul_fire_flame ~ ~ ~ 0.2 0.4 0.2 0.03 3 normal
$execute as $(target) at @s positioned ~ ~0.2 ~ if predicate cartographer_core:periodic_tick/4 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.2 0.3 0.03 3 normal
$execute as $(target) at @s positioned ~ ~0.2 ~ if predicate cartographer_core:periodic_tick/4 run particle minecraft:trial_spawner_detection ~ ~ ~ 0.3 0.2 0.3 0.03 3 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/8 run playsound minecraft:block.campfire.crackle hostile @a[distance=..12] ~ ~ ~ 1.5 2
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/8 run playsound minecraft:block.campfire.crackle hostile @a[distance=..12] ~ ~ ~ 1.5 2

$execute as $(target) at @s run scoreboard players set @s ca.oiled_warmup 0

$execute as $(target) at @s run tag @s remove ca.has_custom_status_ignited_oiled
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_ignited_oiled

$execute as $(target) at @s if score @s ca.oiled_duration matches 1.. run scoreboard players remove @s ca.oiled_duration 1

$execute as $(target) at @s run scoreboard players operation $cauterize_check ca.oiled_cauterize = @s ca.oiled_duration
$scoreboard players set $cauterize_tick_rate ca.oiled_cauterize $(tick_rate)
scoreboard players add $cauterize_tick_rate ca.oiled_cauterize 2

scoreboard players operation $cauterize_check ca.oiled_cauterize /= $cauterize_tick_rate ca.oiled_cauterize

$scoreboard players set $cauterize_amp ca.oiled_cauterize $(damage)

scoreboard players operation $cauterize_check ca.oiled_cauterize *= $cauterize_amp ca.oiled_cauterize

scoreboard players set $do_cauterize ca.oiled_cauterize 0
$execute if score $cauterize_check ca.oiled_cauterize matches $(cauterize_threshold).. run scoreboard players set $do_cauterize ca.oiled_cauterize 1
$execute as $(target) at @s if predicate cartographer_core:world/in_water run scoreboard players set $do_cauterize ca.oiled_cauterize 1
$execute as $(target) at @s if entity @s[tag=ca.has_custom_status_frozen] run scoreboard players set $do_cauterize ca.oiled_cauterize 1

execute if score $do_cauterize ca.oiled_cauterize matches 1.. run data modify storage cartographer_custom_statuses:oiled data set value {}
execute if score $do_cauterize ca.oiled_cauterize matches 1.. run data modify storage cartographer_custom_statuses:oiled data.owner set from storage carto_event current[-1].parameters.owner
execute if score $do_cauterize ca.oiled_cauterize matches 1.. run data modify storage cartographer_custom_statuses:oiled data.tick_rate set from storage carto_event current[-1].parameters.tick_rate
execute if score $do_cauterize ca.oiled_cauterize matches 1.. run data modify storage cartographer_custom_statuses:oiled data.damage set from storage carto_event current[-1].parameters.damage
execute if score $do_cauterize ca.oiled_cauterize matches 1.. run data modify storage cartographer_custom_statuses:oiled data.cauterize_threshold set from storage carto_event current[-1].parameters.cauterize_threshold
execute if score $do_cauterize ca.oiled_cauterize matches 1.. run data modify storage cartographer_custom_statuses:oiled data.cauterize_percent set from storage carto_event current[-1].parameters.cauterize_percent
$execute if score $do_cauterize ca.oiled_cauterize matches 1.. as $(target) at @s run function carto_event:event/custom_statuses/oiled/ignited/cauterize with storage cartographer_custom_statuses:oiled data
execute if score $do_cauterize ca.oiled_cauterize matches 1.. run return 0

execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data set value {}
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.owner set from storage carto_event current[-1].parameters.owner
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.damage set from storage carto_event current[-1].parameters.damage
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.tick_rate set from storage carto_event current[-1].parameters.tick_rate
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.cauterize_threshold set from storage carto_event current[-1].parameters.cauterize_threshold
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.cauterize_percent set from storage carto_event current[-1].parameters.cauterize_percent
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.wildfire_range set from storage carto_event current[-1].parameters.wildfire_range
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.wildfire_targets set from storage carto_event current[-1].parameters.wildfire_targets
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.wildfire_time set from storage carto_event current[-1].parameters.wildfire_time
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.tick_command set from storage carto_event current[-1].parameters.tick_command
execute if score duration= carto_event matches 1 run data modify storage cartographer_custom_statuses:oiled data.proc_command set from storage carto_event current[-1].parameters.proc_command


scoreboard players set $wildfire_targets ca.oiled_cauterize 0
$execute if score duration= carto_event matches 1 run scoreboard players set $wildfire_targets ca.oiled_cauterize $(wildfire_targets)

$execute if score duration= carto_event matches 1 as $(target) at @s run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)
$execute if score duration= carto_event matches 1 as $(target) at @s run damage @s 0.0001 cartographer_custom_statuses:status_damage by $(owner)

$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players add @s ca.oiled_buffer $(damage)
$execute if score duration= carto_event matches 1 as $(target) at @s if score @s ca.oiled_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.85,text:"-❤",color:"#ec8c2c",buffer_name:"oiled"}


$execute if score duration= carto_event matches 1 as $(target) at @s if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 1 as $(target) at @s if score $wildfire_targets ca.oiled_cauterize matches 1.. run function carto_event:event/custom_statuses/oiled/ignited/wildfire with storage cartographer_custom_statuses:oiled data
$execute if score duration= carto_event matches 1 as $(target) at @s if score @s ca.oiled_duration matches 1.. run function carto_event:event/custom_statuses/oiled/ignited/relight with storage cartographer_custom_statuses:oiled data

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1