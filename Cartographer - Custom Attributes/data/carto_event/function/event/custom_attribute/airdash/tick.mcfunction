$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:gravity modifier add ca.airdash_anti_gravity -0.06 add_value
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:gravity modifier remove ca.airdash_anti_gravity

return 1