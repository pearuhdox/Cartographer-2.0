$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.655,0.694,0.769,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/8 run particle small_gust ~ ~ ~ 0.2 0.4 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/8 run playsound minecraft:entity.breeze.idle_air hostile @a[distance=..12] ~ ~ ~ 0.5 0.75

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_windblast] as $(owner) at @s run function carto_event:event/custom_statuses/windblast/modify_aoe/start

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_windblast] run function carto_event:event/custom_statuses/windblast/first_tick

$execute as $(target) at @s run scoreboard players operation @s ca.windblast_hp_past = @s ca.windblast_hp
$execute as $(target) at @s store result score @s ca.windblast_hp run data get entity @s Health 10

scoreboard players set $percent ca.windblast_hp 0
scoreboard players set $percent_hp ca.windblast_hp 0

scoreboard players set $did_run ca.windblast_hp 0

$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data set value {}
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.owner set from storage carto_event current[-1].parameters.owner
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.targets set from storage carto_event current[-1].parameters.targets
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.range set from storage carto_event current[-1].parameters.range
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.damage set from storage carto_event current[-1].parameters.damage
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.knockback set from storage carto_event current[-1].parameters.knockback
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.vertical_knockback set from storage carto_event current[-1].parameters.vertical_knockback
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp run data modify storage cartographer_custom_statuses:windblast data.original set from storage carto_event current[-1].parameters.target

$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp unless score @s ca.windblast_cdl matches 1.. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp unless score @s ca.windblast_cdl matches 1.. run function carto_event:event/custom_statuses/windblast/do with storage cartographer_custom_statuses:windblast data

$execute as $(target) at @s if score @s ca.windblast_cdl matches 1.. run scoreboard players remove @s ca.windblast_cdl 1

$execute as $(target) at @s run tag @s remove ca.has_custom_status_windblast
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_windblast

$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp if score $did_run ca.windblast_hp matches 1.. run tag @s remove ca.has_custom_status_windblast
$execute as $(target) at @s if score @s ca.windblast_hp_past > @s ca.windblast_hp if score $did_run ca.windblast_hp matches 1.. run return 0

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_windblast
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1