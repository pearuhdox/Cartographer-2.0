$execute as $(target) at @s if score duration= carto_event matches 120 run tag @s remove ca.focus_active

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.focus_active
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.focus_active

$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:api/create_single_entity_event {event:"custom_ench/focus/drain",duration:17,delay:3,parameters:{},merge_behavior:"merge"}

$execute as $(target) at @s run return 1