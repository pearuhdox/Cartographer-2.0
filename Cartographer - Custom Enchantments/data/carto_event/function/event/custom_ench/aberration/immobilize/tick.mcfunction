$execute as $(target) at @s if score duration= carto_event matches 1.. run attribute @s minecraft:movement_speed modifier add ca.aberration_immobilize -100 add_value

$execute as $(target) at @s run particle minecraft:item_slime ~ ~1 ~ 0.35 0.5 0.35 0 1 normal

$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:movement_speed modifier remove ca.aberration_immobilize

return 1