$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:movement_speed modifier add ca.shade_respawn -10 add_value
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:gravity modifier add ca.shade_respawn 10 add_value
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:jump_strength modifier add ca.shade_respawn -10 add_value
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:knockback_resistance modifier add ca.shade_respawn -10 add_value


$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:movement_speed modifier remove ca.shade_respawn
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:gravity modifier remove ca.shade_respawn
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:jump_strength modifier remove ca.shade_respawn
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:knockback_resistance modifier remove ca.shade_respawn


return 1