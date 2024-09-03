$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.was_restriked

$execute as $(target) at @s unless score duration= carto_event matches 1 run scoreboard players add @s ca.restrike_time 1
$execute as $(target) at @s unless score duration= carto_event matches 1 if score @s ca.restrike_time matches $(restrike_hit_rate) run function carto_event:event/custom_attribute/restrike_hit/damage with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.was_restriked
$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players set @s ca.restrike_time 0

return 1