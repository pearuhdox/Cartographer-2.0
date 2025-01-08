$execute as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s run tp @s ~ ~ ~ ~8 ~
$execute as $(target) at @s if predicate cartographer_core:periodic_tick/2 run particle minecraft:trial_spawner_detection_ominous ~ ~0.9 ~ 0.15 0 0.15 0.01 1 normal

$execute as $(target) at @s if score duration= carto_event matches 119 as @e[type=#cartographer_core:affected_by_carto,distance=..24,tag=ca.diversion_distract] at @s run function carto_event:event/custom_ench/diversion/mob_branch with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.ominous_bottle.dispose player @a[distance=..12] ~ ~ ~ 0.5 1.5
$execute as $(target) at @s if entity @s[nbt={HurtTime:9s}] run playsound minecraft:event.mob_effect.bad_omen player @a[distance=..12] ~ ~ ~ 0.5 1.5
$execute as $(target) at @s if entity @s[nbt={HurtTime:9s}] run particle minecraft:trial_omen ~ ~0.9 ~ 0.15 0 0.15 0.1 4 normal

$execute as $(target) at @s if entity @s[nbt={AbsorptionAmount:0.0f}] run return run function carto_event:event/custom_ench/diversion/despawn with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run return run function carto_event:event/custom_ench/diversion/despawn with storage carto_event current[-1].parameters

return 1