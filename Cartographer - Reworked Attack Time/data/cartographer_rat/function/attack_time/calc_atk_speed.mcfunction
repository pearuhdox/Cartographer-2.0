attribute @s minecraft:attack_speed modifier remove ca.rat_atk_spd

execute store result score $speed ca.rat_time run attribute @s minecraft:attack_speed get 10000

scoreboard players set $total ca.rat_time 39990
scoreboard players operation $total ca.rat_time -= $speed ca.rat_time

execute store result storage cartographer:rat atk_speed double 0.0001 run scoreboard players get $total ca.rat_time
function cartographer_rat:attack_time/calc_atk_speed_macro with storage cartographer:rat