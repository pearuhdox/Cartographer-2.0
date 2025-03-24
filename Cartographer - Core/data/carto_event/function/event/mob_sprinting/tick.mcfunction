$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.mob_is_sprinting
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.mob_is_sprinting

$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:movement_speed modifier remove ca.mob_sprint
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:movement_speed modifier add ca.mob_sprint 0.3 add_multiplied_total


$execute as $(target) run return 1