#$execute as $(target) at @s if score duration= carto_event matches 300 run function carto_event:event/custom_ench/orbit/orbital/align_fix
#$execute as $(target) at @s if score duration= carto_event matches 299 run tag @s remove ca.new_orbit

$execute as $(display_entity) at @s run scoreboard players set @s ca.entity_purge_var 0

scoreboard players operation $mod ca.ench_orbit_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_orbit_lvl %= $10 ca.CONSTANT

execute store result score $hits ca.ench_orbit_lvl run data get storage carto_event current[-1].parameters.hits 1

$execute as $(target) at @s anchored feet rotated $(rotation) 0 positioned ^ ^0.75 ^$(length) run function carto_event:event/custom_ench/orbit/orbital/position with storage carto_event current[-1].parameters

scoreboard players set $entity_alive ca.ench_orbit_lvl 0
$execute as $(target) at @s unless entity @s[nbt=!{DeathTime:0s}] run scoreboard players set $entity_alive ca.ench_orbit_lvl 1

execute if score $entity_alive ca.ench_orbit_lvl matches 0 run scoreboard players set $hits ca.ench_orbit_lvl 5

execute if score $hits ca.ench_orbit_lvl matches 4.. run scoreboard players remove $count ca.entity_purge_var 1
$execute if score $hits ca.ench_orbit_lvl matches 4.. run kill $(display_entity)
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) if score @s ca.orbit_ct matches 1.. run scoreboard players remove @s ca.orbit_ct 1
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) at @s anchored feet rotated $(rotation) 0 positioned ^ ^0.75 ^$(length) run particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) at @s anchored feet rotated $(rotation) 0 positioned ^ ^0.75 ^$(length) run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.3 0.3 0.3 0.1 20 normal
execute if score $hits ca.ench_orbit_lvl matches 4.. run return 0

execute store result storage carto_event current[-1].parameters.hits int 1 run scoreboard players get $hits ca.ench_orbit_lvl

execute if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1
$execute if score duration= carto_event matches 1 as $(target) if score @s ca.orbit_ct matches 1.. run scoreboard players remove @s ca.orbit_ct 1
$execute if score duration= carto_event matches 1 run kill $(display_entity)

return 1