$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.388,1.000,0.694,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal

$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_warding] store result score @s ca.warding_var run data get entity @s Health 100
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_warding] run attribute @s minecraft:max_health modifier add ca.warding_health_max 1024 add_value
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_warding] run scoreboard players set @s ca.warding_health_old 102400
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_warding] run scoreboard players set @s ca.warding_health 102400
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_warding] run data modify entity @s Health set value 1024.0f
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_warding] run tag @s remove ca.warding_no_cascade

$execute as $(target) at @s run tag @s remove ca.has_custom_status_warding
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_warding

$execute as $(target) at @s if entity @s[type=player] if score duration= carto_event matches 2.. run tag @s add ca.resistor_active
$execute as $(target) at @s if entity @s[type=player] if score duration= carto_event matches 1 run function cartographer_core:handlers/resistor/clear

$execute as $(target) at @s unless entity @s[type=player] if score duration= carto_event matches 1 run attribute @s minecraft:max_health modifier remove ca.warding_health_max
$execute as $(target) at @s unless entity @s[type=player] if score duration= carto_event matches 1 store result entity @s Health float 0.01 run scoreboard players get @s ca.warding_var

$execute as $(target) at @s if score duration= carto_event matches 2.. run scoreboard players set $max_cascade ca.warding_var $(max_cascade)
$execute as $(target) at @s if score duration= carto_event matches 2.. if entity @s[tag=ca.resistor_active] if score @s ca.resistor_queue matches 1.. run function carto_event:event/custom_statuses/warding/damage_queued

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[type=player] run scoreboard players operation @s ca.warding_health_old = @s ca.warding_health
$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[type=player] store result score @s ca.warding_health run data get entity @s Health 100

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[type=player] unless score @s ca.warding_health = @s ca.warding_health_old run function carto_event:event/custom_statuses/warding/mob_health_change
$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[type=player] if score @s ca.warding_var matches ..0 run damage @s 1024 cartographer_core:true_damage

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[type=player] if entity @s[tag=ca.purged] run tag @s remove ca.has_custom_status_warding
$execute as $(target) at @s if entity @s[type=player] if entity @s[tag=ca.purged] run function cartographer_core:handlers/resistor/clear
$execute as $(target) at @s if entity @s[type=player] if entity @s[tag=ca.purged] run return 0

$execute as $(target) at @s unless entity @s[type=player] if entity @s[tag=ca.purged] run tag @s remove ca.has_custom_status_warding
$execute as $(target) at @s unless entity @s[type=player] if entity @s[tag=ca.purged] run attribute @s minecraft:max_health modifier remove ca.warding_health_max
$execute as $(target) at @s unless entity @s[type=player] if entity @s[tag=ca.purged] store result entity @s Health float 0.01 run scoreboard players get @s ca.warding_var
$execute as $(target) at @s unless entity @s[type=player] if entity @s[tag=ca.purged] run return 0
return 1