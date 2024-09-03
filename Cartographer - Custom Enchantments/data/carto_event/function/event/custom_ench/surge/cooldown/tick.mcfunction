$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.surge_cdl
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.surge_cdl

return 1