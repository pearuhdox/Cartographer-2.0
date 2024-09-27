scoreboard players operation $mod ca.ench_storm_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_storm_lvl %= $20 ca.CONSTANT

$execute as $(target) positioned $(x) $(y) $(z) rotated $(rotation) 0 run function carto_event:event/custom_ench/storm/cloud/vfx with storage carto_event current[-1].parameters

execute store result score $rotation ca.ench_storm_lvl run data get storage carto_event current[-1].parameters.rotation 1
scoreboard players add $rotation ca.ench_storm_lvl 9
execute store result storage carto_event current[-1].parameters.rotation int 1 run scoreboard players get $rotation ca.ench_storm_lvl

$execute if score $mod ca.ench_storm_lvl matches 1..4 as $(target) positioned $(x) $(y) $(z) if entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#bb:hostile,limit=1,sort=nearest,tag=!ca.storm_cdl,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/storm/cloud/damage with storage carto_event current[-1].parameters
$execute if score $mod ca.ench_storm_lvl matches 5 as $(target) positioned $(x) $(y) $(z) if entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#bb:hostile,limit=1,sort=nearest,tag=!ca.storm_cdl,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/storm/cloud/damage_adjust with storage carto_event current[-1].parameters

$execute if score $mod ca.ench_storm_lvl matches 1 as $(target) positioned $(x) $(y) $(z) unless entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @a[tag=!ca.storm_cdl,limit=2,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/storm/cloud/damage with storage carto_event current[-1].parameters
$execute if score $mod ca.ench_storm_lvl matches 2 as $(target) positioned $(x) $(y) $(z) unless entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @a[tag=!ca.storm_cdl,limit=1,sort=nearest,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/storm/cloud/damage_adjust with storage carto_event current[-1].parameters


return 1