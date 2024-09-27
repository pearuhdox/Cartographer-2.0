$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.storm_cdl

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.storm_cdl

return 1