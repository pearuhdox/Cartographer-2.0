scoreboard players remove @s ca.raycast 1

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

$execute positioned ~ ~$(y_step_invert) ~ if block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/flip/y with storage carto_event current[-1].parameters
$execute positioned ~ ~$(y_step_invert) ~ if block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute positioned ~$(x_step_invert) ~ ~ if block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/flip/x with storage carto_event current[-1].parameters
$execute positioned ~$(x_step_invert) ~ ~ if block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute positioned ~ ~ ~$(z_step_invert) if block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/flip/z with storage carto_event current[-1].parameters
$execute positioned ~ ~ ~$(z_step_invert) if block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute if score @s ca.raycast matches 1.. positioned ~$(x_step_invert) ~$(y_step_invert) ~$(z_step_invert) run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/find_block_face/raycast with storage carto_event current[-1].parameters