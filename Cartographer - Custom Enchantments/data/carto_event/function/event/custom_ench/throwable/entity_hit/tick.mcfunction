$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.throwable_hit
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.throwable_hit

return 1