#say spinny
$execute as $(target) at @s run tag @s remove ca.did_ricochet

#$execute as $(target) unless entity @s[tag=ca.hit_block] run say $(y_motion)
#$say step $(x_step) | $(y_step) | $(z_step)

$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.animation_set] run data modify entity @s {} merge value {teleport_duration:1,start_interpolation:0,interpolation_duration:0,transformation:[0.0000f,0.0000f,1.0000f,0.0000f,0.7071f,0.7071f,-0.0000f,0.0000f,-0.7071f,0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.animation_set] run tag @s add ca.animation_set

$execute as $(target) at @s if score duration= carto_event matches 1.. if entity @s[tag=ca.throwable_hit_target_block] run setblock ~ ~ ~ target replace
$execute as $(target) at @s if score duration= carto_event matches 1.. if entity @s[tag=ca.throwable_hit_target_block] run tag @s remove ca.throwable_hit_target_block

$execute as $(target) at @s if score duration= carto_event matches 1.. if entity @s[tag=ca.hit_block] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/start

$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.hit_block] facing ~$(x_motion) ~$(y_motion) ~$(z_motion) run function carto_event:event/custom_ench/throwable/throwable_behavior/raycast_start with storage carto_event current[-1].parameters
$execute as $(target) at @s unless entity @s[tag=ca.did_ricochet] if score duration= carto_event matches 1.. unless entity @s[tag=ca.hit_block] positioned ~$(x_motion) ~$(y_motion) ~$(z_motion) facing ~$(x_motion) ~$(y_motion) ~$(z_motion) run tp @s ~ ~ ~ ~ ~

#$execute as $(target) at @s run scoreboard players operation $mod ca.ench_throwable_lvl = duration= carto_event
#$execute as $(target) at @s run scoreboard players operation $mod ca.ench_throwable_lvl %= $8 ca.CONSTANT

$execute as $(target) at @s if score duration= carto_event matches 1.. if score @s ca.ench_loyalty_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/loyalty/tick

$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.hit_block] unless entity @s[tag=ca.corrected] if score @s ca.ench_correction_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/tick


$execute as $(target) at @s unless entity @s[tag=ca.hit_block] unless entity @s[tag=ca.did_ricochet] if score duration= carto_event matches 1.. store result score $y_motion ca.ench_throwable_lvl run data get storage carto_event current[-1].parameters.y_motion 1000
$execute as $(target) at @s unless entity @s[tag=ca.hit_block] unless entity @s[tag=ca.did_ricochet] if score duration= carto_event matches 1.. run scoreboard players remove $y_motion ca.ench_throwable_lvl $(gravity)
$execute as $(target) at @s unless entity @s[tag=ca.hit_block] unless entity @s[tag=ca.did_ricochet] if score duration= carto_event matches 1.. store result storage carto_event current[-1].parameters.y_motion double 0.001 run scoreboard players get $y_motion ca.ench_throwable_lvl
$execute as $(target) at @s unless entity @s[tag=ca.hit_block] unless entity @s[tag=ca.did_ricochet] if score duration= carto_event matches 1.. store result storage carto_event current[-1].parameters.y_step double 0.0001 run scoreboard players get $y_motion ca.ench_throwable_lvl

$execute as $(target) at @s if score duration= carto_event matches 1 if entity @s[tag=ca.hit_block] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/start
$execute as $(target) at @s if score duration= carto_event matches 1 run kill @s

$execute as $(target) at @s run return 1
return 0