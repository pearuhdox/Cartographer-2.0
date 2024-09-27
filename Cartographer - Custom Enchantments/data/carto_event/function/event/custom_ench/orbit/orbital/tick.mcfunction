scoreboard players operation $mod ca.ench_orbit_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_orbit_lvl %= $10 ca.CONSTANT

execute store result score $hits ca.ench_orbit_lvl run data get storage carto_event current[-1].parameters.hits 1

execute store result score $rotation ca.ench_orbit_lvl run data get storage carto_event current[-1].parameters.rotation 1
$scoreboard players add $rotation ca.ench_orbit_lvl $(speed)
$execute as $(target) at @s run scoreboard players operation $bonus_speed ca.ench_orbit_lvl = @s ca.orbit_bonus_speed
scoreboard players operation $bonus_speed ca.ench_orbit_lvl /= $10 ca.CONSTANT
$execute as $(target) at @s if score @s ca.orbit_bonus_speed matches 1.. run scoreboard players add $bonus_speed ca.ench_orbit_lvl 1
scoreboard players operation $rotation ca.ench_orbit_lvl += $bonus_speed ca.ench_orbit_lvl
execute store result storage carto_event current[-1].parameters.rotation int 1 run scoreboard players get $rotation ca.ench_orbit_lvl

$execute as $(target) at @s anchored feet rotated $(rotation) 0 positioned ^ ^0.75 ^$(length) run function carto_event:event/custom_ench/orbit/orbital/position with storage carto_event current[-1].parameters

scoreboard players set $entity_alive ca.ench_orbit_lvl 0
$execute as $(target) at @s unless entity @s[nbt=!{DeathTime:0s}] run scoreboard players set $entity_alive ca.ench_orbit_lvl 1

execute if score $entity_alive ca.ench_orbit_lvl matches 0 run scoreboard players set $hits ca.ench_orbit_lvl 5

$execute if score $hits ca.ench_orbit_lvl matches 4.. run kill $(display_entity)
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) at @s if entity @s[type=player] run playsound minecraft:block.decorated_pot.shatter player @a[distance=..16] ~ ~ ~ 2 0.75
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) at @s unless entity @s[type=player] run playsound minecraft:block.decorated_pot.shatter hostile @a[distance=..16] ~ ~ ~ 2 0.75
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) at @s anchored feet rotated $(rotation) 0 positioned ^ ^0.75 ^$(length) run particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal
$execute if score $hits ca.ench_orbit_lvl matches 4.. as $(target) at @s anchored feet rotated $(rotation) 0 positioned ^ ^0.75 ^$(length) run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.3 0.3 0.3 0.1 20 normal
execute if score $hits ca.ench_orbit_lvl matches 4.. run return 0

execute store result storage carto_event current[-1].parameters.hits int 1 run scoreboard players get $hits ca.ench_orbit_lvl

$execute if score duration= carto_event matches 1 run kill $(display_entity)

return 1