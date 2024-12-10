attribute @s minecraft:follow_range modifier remove ca.asleep_follow_range
execute if score duration= carto_event matches 2.. run attribute @s minecraft:follow_range modifier add ca.asleep_follow_range -1 add_multiplied_total

attribute @s minecraft:movement_speed modifier remove ca.asleep_speed
execute if score duration= carto_event matches 2.. run attribute @s minecraft:movement_speed modifier add ca.asleep_speed -1 add_multiplied_total

attribute @s minecraft:attack_damage modifier remove ca.asleep_damage
execute if score duration= carto_event matches 2.. run attribute @s minecraft:attack_damage modifier add ca.asleep_damage -1 add_multiplied_total
