$execute as $(target) at @s unless block ~ ~-0.1 ~ #cartographer_core:can_raycast run tag @s remove ca.is_lunging
$execute as $(target) at @s unless block ~ ~-0.1 ~ #cartographer_core:can_raycast run return 0

$execute as $(target) at @s store result storage carto_event current[-1].parameters.damage double 0.5 run attribute @s minecraft:attack_damage get
$execute as $(target) at @s if entity @s[type=player] positioned ~-1 ~-0.5 ~-1 as @e[type=#cartographer_core:affected_by_carto,dx=1,dy=2,dz=1] at @s run function carto_event:event/custom_ench/lunging/moving/do_damage with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.is_lunging
return 1