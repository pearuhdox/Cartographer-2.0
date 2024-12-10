execute store result score $x_start ca.ench_throwable_lvl run data get entity @s Pos[0] 1000
execute store result score $y_start ca.ench_throwable_lvl run data get entity @s Pos[1] 1000
execute store result score $z_start ca.ench_throwable_lvl run data get entity @s Pos[2] 1000

$tp @s ^ ^ ^$(motion_scale)

execute store result score $x_step ca.ench_throwable_lvl run data get entity @s Pos[0] 1000
execute store result score $y_step ca.ench_throwable_lvl run data get entity @s Pos[1] 1000
execute store result score $z_step ca.ench_throwable_lvl run data get entity @s Pos[2] 1000

scoreboard players operation $x_step ca.ench_throwable_lvl -= $x_start ca.ench_throwable_lvl
scoreboard players operation $y_step ca.ench_throwable_lvl -= $y_start ca.ench_throwable_lvl
scoreboard players operation $z_step ca.ench_throwable_lvl -= $z_start ca.ench_throwable_lvl

execute store result storage cartographer:custom_enchantments x_motion double 0.001 run scoreboard players get $x_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments y_motion double 0.001 run scoreboard players get $y_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments z_motion double 0.001 run scoreboard players get $z_step ca.ench_throwable_lvl

$tp @s ^ ^ ^$(step_scale)

execute store result score $x_step ca.ench_throwable_lvl run data get entity @s Pos[0] 1000
execute store result score $y_step ca.ench_throwable_lvl run data get entity @s Pos[1] 1000
execute store result score $z_step ca.ench_throwable_lvl run data get entity @s Pos[2] 1000

scoreboard players operation $x_step ca.ench_throwable_lvl -= $x_start ca.ench_throwable_lvl
scoreboard players operation $y_step ca.ench_throwable_lvl -= $y_start ca.ench_throwable_lvl
scoreboard players operation $z_step ca.ench_throwable_lvl -= $z_start ca.ench_throwable_lvl

execute store result storage cartographer:custom_enchantments x_step double 0.001 run scoreboard players get $x_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments y_step double 0.001 run scoreboard players get $y_step ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments z_step double 0.001 run scoreboard players get $z_step ca.ench_throwable_lvl

data modify storage carto_event current[-1].parameters.x_motion set from storage cartographer:custom_enchantments x_motion
data modify storage carto_event current[-1].parameters.y_motion set from storage cartographer:custom_enchantments y_motion
data modify storage carto_event current[-1].parameters.z_motion set from storage cartographer:custom_enchantments z_motion

data modify storage carto_event current[-1].parameters.x_step set from storage cartographer:custom_enchantments x_step
data modify storage carto_event current[-1].parameters.y_step set from storage cartographer:custom_enchantments y_step
data modify storage carto_event current[-1].parameters.z_step set from storage cartographer:custom_enchantments z_step