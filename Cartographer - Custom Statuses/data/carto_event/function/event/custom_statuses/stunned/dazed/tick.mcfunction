$execute as $(target) at @s if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.910,0.886,0.745,1.00]} ~ ~1 ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_dazed] run function carto_event:event/custom_statuses/stunned/dazed/first_tick

$execute as $(target) at @s if score @s ca.stunned_direction matches 360.. run scoreboard players remove @s ca.stunned_direction 360
data modify storage cartographer_custom_statuses:stunned data set value {}
$execute as $(target) at @s store result storage cartographer_custom_statuses:stunned data.rotation int 1 run scoreboard players add @s ca.stunned_direction 30

$execute as $(target) at @s run function carto_event:event/custom_statuses/stunned/dazed/vfx with storage cartographer_custom_statuses:stunned data

$execute as $(target) at @s run function carto_event:event/custom_statuses/stunned/dazed/attribute_calc

$execute as $(target) at @s run tag @s remove ca.has_custom_status_dazed
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_dazed

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run function carto_event:event/custom_statuses/stunned/dazed/remove_effect with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run function carto_event:event/custom_statuses/stunned/dazed/remove_effect with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1