
$execute as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0

scoreboard players operation $mod ca.ench_storm_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_storm_lvl %= $30 ca.CONSTANT

scoreboard players operation $move_mod ca.ench_storm_lvl = duration= carto_event
scoreboard players operation $move_mod ca.ench_storm_lvl %= $10 ca.CONSTANT

$execute as $(target) at @s rotated $(rotation) 0 run function carto_event:event/custom_ench/storm/cloud/vfx with storage carto_event current[-1].parameters

$execute as $(target) at @s run scoreboard players add @s ca.storm_time 1
$execute as $(target) at @s if score @s ca.storm_time matches 2 run function carto_event:event/custom_ench/storm/cloud/telegraph_animation

$execute if score $move_mod ca.ench_storm_lvl matches 1 as $(owner) if entity @s[type=player] as $(target) at @s if score @s ca.storm_time matches 6.. at @s facing entity @e[type=#cartographer_core:affected_by_carto,limit=1,sort=nearest,distance=1..20] feet positioned ^ ^0.25 ^1.2 align y rotated as @s run tp @s ~ ~0.1 ~ ~20 ~
$execute if score $move_mod ca.ench_storm_lvl matches 1 as $(owner) unless entity @s[type=player] as $(target) at @s if score @s ca.storm_time matches 6.. at @s facing entity @p[distance=1..20] feet positioned ^ ^0.25 ^1 align y rotated as @s run tp @s ~ ~0.1 ~ ~20 ~

#$execute if score $move_mod ca.ench_storm_lvl matches 6.. as $(target) at @s if score @s ca.storm_time matches 6.. at @s run rotate @s ~3 ~

$execute as $(owner) unless entity @s[type=player] as $(target) at @s as @a[distance=..$(half_size)] run function carto_event:event/custom_ench/storm/cloud/detect_player/warning


execute store result score $rotation ca.ench_storm_lvl run data get storage carto_event current[-1].parameters.rotation 1
scoreboard players add $rotation ca.ench_storm_lvl 9
execute store result storage carto_event current[-1].parameters.rotation int 1 run scoreboard players get $rotation ca.ench_storm_lvl

$execute if score $mod ca.ench_storm_lvl matches 1..5 as $(owner) if entity @s[type=player] as $(target) at @s positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,limit=1,sort=nearest,tag=!ca.storm_cdl,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/storm/cloud/damage with storage carto_event current[-1].parameters

$execute if score $mod ca.ench_storm_lvl matches 4 as $(owner) unless entity @s[type=player] as $(target) at @s positioned ~-$(half_size) ~ ~-$(half_size) as @a[tag=!ca.storm_cdl,limit=3,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/storm/cloud/damage with storage carto_event current[-1].parameters

$execute as $(target) if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1
$execute if score duration= carto_event matches 1 as $(target) if score @s ca.storm_ct matches 1.. run scoreboard players remove @s ca.storm_ct 1
$execute if score duration= carto_event matches 1 run kill $(target)

return 1