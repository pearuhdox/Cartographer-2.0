$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[1.000,0.780,0.000,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_strength
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_strength

$execute as $(target) at @s run attribute @s minecraft:movement_speed modifier remove ca.strength
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:attack_damage modifier add ca.strength $(amount) add_multiplied_total

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.purged] run tag @s remove ca.has_custom_status_strength
$execute as $(target) at @s if entity @s[tag=ca.purged] run return 0
return 1