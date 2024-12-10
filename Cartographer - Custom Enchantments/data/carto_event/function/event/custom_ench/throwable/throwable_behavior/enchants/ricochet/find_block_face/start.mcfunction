execute store result score $x_mot ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.x_motion 1000
execute store result score $y_mot ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.y_motion 1000
execute store result score $z_mot ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.z_motion 1000

execute store result score $x_mot_invert ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.x_motion 1000
execute store result score $y_mot_invert ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.y_motion 1000
execute store result score $z_mot_invert ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.z_motion 1000

scoreboard players operation $x_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $y_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $z_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.x_motion_invert double 0.001 run scoreboard players get $x_mot_invert ca.ench_ricochet_lvl
execute store result storage carto_event current[-1].parameters.y_motion_invert double 0.001 run scoreboard players get $y_mot_invert ca.ench_ricochet_lvl
execute store result storage carto_event current[-1].parameters.z_motion_invert double 0.001 run scoreboard players get $z_mot_invert ca.ench_ricochet_lvl



execute store result score $x_mot_invert ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.x_step 1000
execute store result score $y_mot_invert ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.y_step 1000
execute store result score $z_mot_invert ca.ench_ricochet_lvl run data get storage carto_event current[-1].parameters.z_step 1000

scoreboard players operation $x_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $y_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $z_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.x_step_invert double 0.001 run scoreboard players get $x_mot_invert ca.ench_ricochet_lvl
execute store result storage carto_event current[-1].parameters.y_step_invert double 0.001 run scoreboard players get $y_mot_invert ca.ench_ricochet_lvl
execute store result storage carto_event current[-1].parameters.z_step_invert double 0.001 run scoreboard players get $z_mot_invert ca.ench_ricochet_lvl



scoreboard players set @s ca.raycast 15

function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/find_block_face/raycast with storage carto_event current[-1].parameters