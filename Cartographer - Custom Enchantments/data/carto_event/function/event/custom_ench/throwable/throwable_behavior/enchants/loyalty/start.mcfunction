execute store result score $loyalty_speed ca.ench_throwable_lvl run data get storage carto_event current[-1].parameters.motion_scale 100
scoreboard players operation $loyalty_speed ca.ench_throwable_lvl /= $2 ca.CONSTANT
execute store result storage carto_event current[-1].parameters.motion_scale double 0.01 run scoreboard players get $loyalty_speed ca.ench_throwable_lvl

execute store result score $loyalty_speed ca.ench_throwable_lvl run data get storage carto_event current[-1].parameters.step_scale 1000
scoreboard players operation $loyalty_speed ca.ench_throwable_lvl /= $2 ca.CONSTANT
execute store result storage carto_event current[-1].parameters.step_scale double 0.001 run scoreboard players get $loyalty_speed ca.ench_throwable_lvl

execute if entity @s[tag=ca.hit_block] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/start

$execute as @s at @s facing entity $(owner) eyes run tp @s ^ ^ ^1
$execute as @s at @s facing entity $(owner) eyes rotated ~ ~-20 run function carto_event:event/custom_ench/throwable/throwable_behavior/alter_direction with storage carto_event current[-1].parameters

$execute as $(owner) at @s if entity @s[type=player] run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 1.5
$execute as $(owner) at @s unless entity @s[type=player] run playsound minecraft:item.trident.return hostile @a[distance=..16] ~ ~ ~ 1 1.5


tag @s remove ca.hit_block
