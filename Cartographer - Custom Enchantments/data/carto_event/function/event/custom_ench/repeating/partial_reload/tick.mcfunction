$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:attack_damage modifier add ca.repeating_partial_reload_cdl -100 add_value
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:attack_speed modifier add ca.repeating_partial_reload_cdl -100 add_value
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:block_break_speed modifier add ca.repeating_partial_reload_cdl -100 add_value
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:mining_efficiency modifier add ca.repeating_partial_reload_cdl -100 add_value

$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:attack_damage modifier remove ca.repeating_partial_reload_cdl
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:attack_speed modifier remove ca.repeating_partial_reload_cdl
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:block_break_speed modifier remove ca.repeating_partial_reload_cdl
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:mining_efficiency modifier remove ca.repeating_partial_reload_cdl


return 1