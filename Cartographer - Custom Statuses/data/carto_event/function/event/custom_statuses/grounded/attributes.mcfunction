attribute @s minecraft:step_height modifier remove ca.grounded
execute if score duration= carto_event matches 2.. run attribute @s minecraft:step_height modifier add ca.grounded -10 add_value

attribute @s minecraft:gravity modifier remove ca.grounded
execute if score duration= carto_event matches 2.. run attribute @s minecraft:gravity modifier add ca.grounded 10 add_value

attribute @s minecraft:jump_strength modifier remove ca.grounded
execute if score duration= carto_event matches 2.. run attribute @s minecraft:jump_strength modifier add ca.grounded -10 add_value
