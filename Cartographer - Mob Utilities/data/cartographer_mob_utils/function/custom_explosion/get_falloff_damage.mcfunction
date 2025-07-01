execute store result score $damage ca.explode_var run data get storage cartographer_mob_utils:explosion data.damage 100

scoreboard players operation $diff ca.explode_var = @s ca.explode_dist
scoreboard players operation $diff ca.explode_var *= $100 ca.CONSTANT
scoreboard players operation $diff ca.explode_var /= $range ca.explode_var

scoreboard players set $percent ca.explode_var 100
scoreboard players operation $percent ca.explode_var -= $diff ca.explode_var

scoreboard players operation $damage ca.explode_var *= $percent ca.explode_var
scoreboard players operation $damage ca.explode_var /= $100 ca.CONSTANT

execute store result storage cartographer_mob_utils:explosion data.partial_damage double 0.01 run scoreboard players get $damage ca.explode_var

function cartographer_mob_utils:custom_explosion/falloff_damage with storage cartographer_mob_utils:explosion data