$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.first_striked
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.first_striked

$execute as $(target) at @s run return 1