$execute as @s at @s facing entity $(owner) eyes run function carto_event:event/custom_ench/throwable/throwable_behavior/alter_direction with storage carto_event current[-1].parameters

$execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as $(owner) if entity @s[dx=0,dy=0,dz=0] run kill $(target)