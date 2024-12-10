$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.141,0.620,0.494,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_shackled] as $(owner) at @s run function carto_event:event/custom_statuses/shackled/modify_aoe/start

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_shackled] run function carto_event:event/custom_statuses/shackled/first_tick
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_shackled] run scoreboard players set @s ca.shackled_spread $(spread)

$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.owner set from storage carto_event current[-1].parameters.owner
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.percentage set from storage carto_event current[-1].parameters.percentage
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.range set from storage carto_event current[-1].parameters.range
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.targets set from storage carto_event current[-1].parameters.targets
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.spread set from storage carto_event current[-1].parameters.spread
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.victim set from storage carto_event current[-1].parameters.target
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run data modify storage cartographer_custom_statuses:shackled data.tick_command set from storage carto_event current[-1].parameters.tick_command
$execute as $(target) at @s if score @s ca.shackled_spread matches 1.. run function carto_event:event/custom_statuses/shackled/spread with storage cartographer_custom_statuses:shackled data


$execute as $(target) at @s run scoreboard players operation @s ca.shackled_hp_past = @s ca.shackled_hp
$execute as $(target) at @s store result score @s ca.shackled_hp run data get entity @s Health 10

$execute as $(target) at @s run scoreboard players set @s ca.shackled_targets $(targets)
$execute as $(target) at @s run scoreboard players set @s ca.shackled_range $(range)
$execute as $(target) at @s run scoreboard players set @s ca.shackled_percentage $(percentage)

$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run scoreboard players set $percent ca.shackled_hp $(percentage)


$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run function carto_event:event/custom_statuses/shackled/difference

$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.owner set from storage carto_event current[-1].parameters.owner
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.percentage set from storage carto_event current[-1].parameters.percentage
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.range set from storage carto_event current[-1].parameters.range
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.targets set from storage carto_event current[-1].parameters.targets
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.spread set from storage carto_event current[-1].parameters.spread
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.victim set from storage carto_event current[-1].parameters.target
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp run data modify storage cartographer_custom_statuses:shackled data.proc_command set from storage carto_event current[-1].parameters.proc_command

$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp unless score @s ca.shackled_cdl matches 1.. if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
$execute as $(target) at @s if score @s ca.shackled_hp_past > @s ca.shackled_hp unless score @s ca.shackled_cdl matches 1.. run function carto_event:event/custom_statuses/shackled/macro with storage cartographer_custom_statuses:shackled data

$execute as $(target) at @s if score @s ca.shackled_cdl matches 1.. run scoreboard players remove @s ca.shackled_cdl 1

$execute as $(target) at @s run tag @s remove ca.has_custom_status_shackled
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_shackled

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_shackled
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1