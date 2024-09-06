$execute as $(target) at @s run tag @s add ca.given_precision

$execute as $(target) at @s run scoreboard players operation $value ca.stat_var = @s ca.ench_precision_lvl
scoreboard players operation $value ca.stat_var *= $5 ca.CONSTANT

execute store result storage cartographer:custom_attributes percent double 0.01 run scoreboard players get $value ca.stat_var

$execute as $(target) at @s run function carto_event:event/custom_ench/precision/macro with storage cartographer:custom_attributes

return 0