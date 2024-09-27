execute store result score $pos_x ca.ench_storm_lvl run data get entity @s Pos[0] 10
execute store result score $pos_y ca.ench_storm_lvl run data get entity @s Pos[1] 10
execute store result score $pos_z ca.ench_storm_lvl run data get entity @s Pos[2] 10

execute store result score $pos_x_add ca.ench_storm_lvl run random value -10..10
execute store result score $pos_z_add ca.ench_storm_lvl run random value -10..10

scoreboard players operation $pos_x ca.ench_storm_lvl += $pos_x_add ca.ench_storm_lvl
scoreboard players operation $pos_z ca.ench_storm_lvl += $pos_z_add ca.ench_storm_lvl