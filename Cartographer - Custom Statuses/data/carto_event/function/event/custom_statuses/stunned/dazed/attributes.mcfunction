attribute @s minecraft:movement_speed modifier remove ca.dazed_speed
$execute if score duration= carto_event matches 2.. run attribute @s minecraft:movement_speed modifier add ca.dazed_speed -$(value) add_multiplied_total

attribute @s minecraft:attack_damage modifier remove ca.dazed_damage
$execute if score duration= carto_event matches 2.. run attribute @s minecraft:attack_damage modifier add ca.dazed_damage -$(value) add_multiplied_total