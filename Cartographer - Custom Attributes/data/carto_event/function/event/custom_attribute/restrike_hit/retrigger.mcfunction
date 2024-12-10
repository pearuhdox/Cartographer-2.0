execute store result score $remaining ca.restrike_hit_var run data get storage carto_event current[-1].parameters.restrike_count 1

execute store result storage carto_event current[-1].parameters.restrike_count int 1 run scoreboard players remove $remaining ca.restrike_hit_var 1

execute if score $remaining ca.restrike_hit_var matches 1.. run function carto_event:event/custom_attribute/restrike_hit/macro with storage carto_event current[-1].parameters

execute unless score $remaining ca.restrike_hit_var matches 1.. unless entity @s[type=player] run attribute @s minecraft:gravity modifier remove ca.restrike_gravity
