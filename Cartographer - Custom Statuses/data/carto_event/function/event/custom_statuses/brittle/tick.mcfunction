$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.671,0.494,0.227,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_brittle] run function carto_event:event/custom_statuses/brittle/first_tick

scoreboard players set $detonate_brittle ca.status_var 0

$execute as $(target) at @s run scoreboard players operation @s ca.brittle_hp_past = @s ca.brittle_hp
$execute as $(target) at @s store result score @s ca.brittle_hp run data get entity @s Health 10

$execute as $(target) at @s if score @s ca.brittle_hp_past > @s ca.brittle_hp run scoreboard players set $threshold ca.brittle_buildup $(threshold)
$execute as $(target) at @s if score @s ca.brittle_hp_past > @s ca.brittle_hp run function carto_event:event/custom_statuses/brittle/difference
#$execute as $(target) at @s if score @s ca.brittle_hp_past > @s ca.brittle_hp unless score @s ca.brittle_cdl matches 1.. positioned ~ ~1 ~ run function carto_event:event/custom_statuses/brittle/damage with storage cartographer_custom_statuses:brittle data

#$execute as $(target) at @s run scoreboard players remove @s ca.brittle_cdl 1

$execute if score duration= carto_event matches 1 run scoreboard players set $fail_percent ca.status_var $(fail_percent)
execute if score duration= carto_event matches 1 if score $fail_percent ca.status_var matches 1.. run scoreboard players set $detonate_brittle ca.status_var 2

$execute if score $detonate_brittle ca.status_var matches 1.. run scoreboard players set $brittle_dmg ca.status_var $(damage)
execute if score $detonate_brittle ca.status_var matches 1.. run scoreboard players operation $brittle_dmg ca.status_var *= $10 ca.CONSTANT

execute if score $detonate_brittle ca.status_var matches 1 run scoreboard players set $brittle_perc ca.status_var 100
$execute if score $detonate_brittle ca.status_var matches 2.. run scoreboard players set $brittle_perc ca.status_var $(fail_percent)
execute if score $detonate_brittle ca.status_var matches 1.. run scoreboard players operation $brittle_dmg ca.status_var *= $brittle_perc ca.status_var
execute if score $detonate_brittle ca.status_var matches 1.. run scoreboard players operation $brittle_dmg ca.status_var /= $100 ca.CONSTANT

execute if score $detonate_brittle ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:brittle data set value {}
execute if score $detonate_brittle ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:brittle data.owner set from storage carto_event current[-1].parameters.owner
execute if score $detonate_brittle ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:brittle data.range set from storage carto_event current[-1].parameters.range
execute if score $detonate_brittle ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:brittle data.targets set from storage carto_event current[-1].parameters.targets
execute if score $detonate_brittle ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:brittle data.windup_time set from storage carto_event current[-1].parameters.windup_time
execute if score $detonate_brittle ca.status_var matches 1.. store result storage cartographer_custom_statuses:brittle data.damage double 0.1 run scoreboard players get $brittle_dmg ca.status_var

#Modify Damage and Size of AoE based off owner attributes
$execute if score $detonate_brittle ca.status_var matches 1.. as $(owner) at @s unless score @s ca.attr_aoe_size_total matches -2000000 run function carto_event:event/custom_statuses/brittle/modify_aoe/size
$execute if score $detonate_brittle ca.status_var matches 1.. as $(owner) at @s unless score @s ca.attr_aoe_damage_total matches -2000000 run function carto_event:event/custom_statuses/brittle/modify_aoe/damage

$execute if score $detonate_brittle ca.status_var matches 1.. as $(target) at @s positioned ~ ~1 ~ run function carto_event:event/custom_statuses/brittle/create_detonate with storage cartographer_custom_statuses:brittle data
$execute if score $detonate_brittle ca.status_var matches 1.. as $(target) at @s run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute as $(target) at @s run tag @s remove ca.has_custom_status_brittle
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_brittle

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters


$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_brittle
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0

execute if score $detonate_brittle ca.status_var matches 1.. run return 0
return 1