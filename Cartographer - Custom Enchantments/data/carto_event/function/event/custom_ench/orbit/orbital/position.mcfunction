#$execute as $(target) if entity @s[type=player] 
$execute as $(target) if entity @s[type=player] positioned ~-$(half_size) ~-1 ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,limit=1,tag=!ca.orbit_cdl,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/orbit/orbital/damage with storage carto_event current[-1].parameters
$execute as $(target) unless entity @s[type=player] positioned ~-$(half_size) ~-1 ~-$(half_size) as @a[tag=!ca.orbit_cdl,limit=1,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/orbit/orbital/damage with storage carto_event current[-1].parameters


$execute facing entity $(target) eyes rotated ~ 0 run tp $(display_entity) ~ ~ ~ ~180 ~


execute if score $mod ca.ench_orbit_lvl matches 1 run function carto_event:event/custom_ench/orbit/orbital/vfx with storage carto_event current[-1].parameters

$execute as $(target) unless score @s ca.orbit_ct matches 3.. if entity @s[type=player] run particle minecraft:dust{color:[0.020,0.890,0.659],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 3 normal
$execute as $(target) unless score @s ca.orbit_ct matches 3.. unless entity @s[type=player] run particle minecraft:dust{color:[0.541,0.110,0.110],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 3 normal