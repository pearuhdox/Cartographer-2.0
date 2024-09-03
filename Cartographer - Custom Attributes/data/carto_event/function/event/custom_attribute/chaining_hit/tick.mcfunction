$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.was_chained

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.was_chained

return 1