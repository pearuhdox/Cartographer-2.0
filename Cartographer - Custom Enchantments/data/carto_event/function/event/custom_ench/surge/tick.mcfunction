#$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:movement_speed modifier remove ca.surge_sprint_penalty
#$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:movement_speed modifier add ca.surge_sprint_penalty -0.33 add_multiplied_total

$execute as $(target) at @s if score duration= carto_event matches 5 run tag @s add ca.surge_inactive
$execute as $(target) at @s if score duration= carto_event matches 5 run scoreboard players set @s ca.sprint_time_surge 2
$execute as $(target) at @s if score duration= carto_event matches 5 as @e[type=text_display,limit=1,sort=nearest,tag=ca.surge_telegraphing] at @s run kill @s


return 1
