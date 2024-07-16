$execute as $(target) at @s if score duration= carto_event matches 1 positioned ~ ~1 ~ run function carto_event:event/custom_statuses/brittle/detonate/damage with storage carto_event current[-1].parameters

$execute as $(target) at @s run tag @s remove ca.has_custom_status_brittle_detonating
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_brittle_detonating

return 1