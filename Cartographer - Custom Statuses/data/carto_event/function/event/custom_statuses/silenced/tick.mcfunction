$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.235,0.298,0.471,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 0 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_silenced
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_silenced

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[type=player] if items entity @s weapon.* #cartographer_core:enchant_support/weapons/ranged_no_trident run tag @s add ca.indicator_cc
$execute as $(target) at @s if entity @s[type=player] if items entity @s weapon.* #cartographer_core:enchant_support/weapons/ranged_no_trident run scoreboard players set @s ca.cc_time 4

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_silenced
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_silenced
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1