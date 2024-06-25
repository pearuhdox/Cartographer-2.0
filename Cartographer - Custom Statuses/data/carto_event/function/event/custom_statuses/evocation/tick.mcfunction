$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.522,0.404,0.314,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle crit ~ ~ ~ 0.25 0.25 0.25 0.1 2 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_evocation] run playsound minecraft:entity.evoker.prepare_attack hostile @a[distance=..16] ~ ~ ~ 0.75 2
$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_evocation] positioned ~ ~1 ~ run particle dust{color:[0.522,0.404,0.314],scale:2} ~ ~ ~ 0.25 0.25 0.25 1 10 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_evocation

$execute as $(target) at @s positioned ^ ^0.2 ^ if score duration= carto_event matches 24 run function carto_event:event/custom_statuses/evocation/grasp_vfx/1
$execute as $(target) at @s positioned ^ ^0.2 ^ if score duration= carto_event matches 22 run function carto_event:event/custom_statuses/evocation/grasp_vfx/2
$execute as $(target) at @s positioned ^ ^0.2 ^ if score duration= carto_event matches 20 run function carto_event:event/custom_statuses/evocation/grasp_vfx/3

$execute as $(target) at @s if score duration= carto_event matches 20 as @e[type=#bb:hostile,distance=$(damage_range)..$(grasp_range),sort=nearest] at @s run function carto_event:event/custom_statuses/evocation/grasp with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 9 as @e[type=#bb:hostile,distance=..$(damage_range),sort=nearest] at @s run function carto_event:event/custom_statuses/evocation/fang_summon

$execute as $(target) at @s if score duration= carto_event matches 2 as @e[type=#bb:hostile,distance=..$(damage_range),sort=nearest] at @s run function carto_event:event/custom_statuses/evocation/ench_add

$execute as $(target) at @s if score duration= carto_event matches 1 as @e[type=#bb:hostile,distance=..$(damage_range),sort=nearest] at @s run function carto_event:event/custom_statuses/evocation/ench_remove

$execute if score duration= carto_event matches 1 as $(target) at @s as @e[type=#bb:hostile,distance=..$(damage_range),sort=nearest] at @s run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)
$execute if score duration= carto_event matches 1 as $(target) at @s as @e[type=#bb:hostile,distance=..$(damage_range),sort=nearest] at @s positioned ~ ~1 ~ run function carto_event:event/custom_statuses/evocation/vfx
$execute if score duration= carto_event matches 1 as $(target) at @s run tag @s remove ca.has_custom_status_evocation

$execute as $(target) at @s if score duration= carto_event matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..16] ~ ~ ~ 0.75 2


$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_evocation
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1