$execute as $(target) at @s if score duration= carto_event matches 2 run tag @s remove ca.energized_calculated

$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players reset @s ca.energized_x
$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players reset @s ca.energized_y
$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players reset @s ca.energized_z

$execute as $(target) run return 1