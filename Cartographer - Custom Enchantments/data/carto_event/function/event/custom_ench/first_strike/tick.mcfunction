$execute as $(target) at @s if score duration= carto_event matches 11.. run particle minecraft:dust{color:[0.6,0.6,0.6],scale:1.2} ~ ~1 ~ 0.35 0.35 0.35 0 1 normal @a[scores={ca.ench_first_strike_lvl=1..}]

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.first_striked
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.first_striked

$execute as $(target) at @s run return 1