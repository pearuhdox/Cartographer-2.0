$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.surge_cdl
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:attack_damage modifier remove ca.surge_blocked

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.surge_cdl
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:attack_damage modifier add ca.surge_blocked -1 add_multiplied_total

return 1