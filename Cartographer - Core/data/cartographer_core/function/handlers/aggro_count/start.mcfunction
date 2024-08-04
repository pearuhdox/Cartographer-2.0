tag @s add ca.aggro_ct_test
scoreboard players set $aggro_ct ca.var 0

execute as @e[type=#bb:hostile,distance=..24] at @s run function cartographer_core:handlers/aggro_count/branch