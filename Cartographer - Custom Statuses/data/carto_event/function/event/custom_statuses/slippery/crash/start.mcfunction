playsound minecraft:entity.slime.squish hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 0.1 0.5

function carto_event:event/custom_statuses/slippery/crash/vfx with storage carto_event current[-1].parameters

$execute as @e[type=#cartographer_core:affected_by_carto,distance=0.1..$(crash_range)] at @s facing entity $(target) feet run function carto_event:event/custom_statuses/slippery/crash/effect with storage carto_event current[-1].parameters