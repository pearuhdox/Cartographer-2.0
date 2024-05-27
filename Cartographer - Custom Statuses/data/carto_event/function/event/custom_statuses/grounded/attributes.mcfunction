attribute @s minecraft:generic.step_height modifier remove ca.grounded
execute if score duration= carto_event matches 2.. run attribute @s minecraft:generic.step_height modifier add ca.grounded -10 add_value

attribute @s minecraft:generic.gravity modifier remove ca.grounded
execute if score duration= carto_event matches 2.. run attribute @s minecraft:generic.gravity modifier add ca.grounded 10 add_value

attribute @s minecraft:generic.jump_strength modifier remove ca.grounded
execute if score duration= carto_event matches 2.. run attribute @s minecraft:generic.jump_strength modifier add ca.grounded -10 add_value
