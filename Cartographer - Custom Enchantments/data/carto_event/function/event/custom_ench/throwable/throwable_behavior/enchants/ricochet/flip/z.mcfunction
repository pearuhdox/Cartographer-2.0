scoreboard players set $side_reflect ca.ench_ricochet_lvl 3
#execute as @s at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 20 normal

execute store result score $swap ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.z_motion 1000
scoreboard players operation $swap ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
execute store result storage carto_event current[-1].parameters.z_motion double 0.001 run scoreboard players get $swap ca.ench_ricochet_lvl

scoreboard players operation $swap ca.ench_ricochet_lvl /= $2 ca.CONSTANT
execute store result storage carto_event current[-1].parameters.z_step double 0.0001 run scoreboard players get $swap ca.ench_ricochet_lvl

scoreboard players remove @s ca.ench_ricochet_lvl 1

execute if score $z_mot ca.ench_ricochet_lvl matches 1.. align z positioned ~ ~ ~-1.5 run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/flip/do_move
execute unless score $z_mot ca.ench_ricochet_lvl matches 1.. align z positioned ~ ~ ~0.5 run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/flip/do_move
