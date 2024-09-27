execute store result score $pos_x ca.ench_starfall_lvl run data get entity @s Pos[0] 10
execute store result score $pos_y ca.ench_starfall_lvl run data get entity @s Pos[1] 10
execute store result score $pos_z ca.ench_starfall_lvl run data get entity @s Pos[2] 10

execute store result score $pos_x_add ca.ench_starfall_lvl run random value -20..20
execute store result score $pos_z_add ca.ench_starfall_lvl run random value -20..20

scoreboard players operation $pos_x ca.ench_starfall_lvl += $pos_x_add ca.ench_starfall_lvl
scoreboard players operation $pos_z ca.ench_starfall_lvl += $pos_z_add ca.ench_starfall_lvl