$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[1.000,0.388,0.839,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ unless entity @s[type=player] unless score @s ca.nullify_cooldown matches 1.. if predicate cartographer_core:periodic_tick/4 run particle minecraft:dust{color:[1.000,0.388,0.839],scale:2.5} ~ ~ ~ 0.35 0.35 0.35 0 1 normal

$execute as $(target) at @s run scoreboard players set @s ca.nullify_cooldown $(tick_count)

$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players set @s ca.nullify_cooldown 0
$execute as $(target) at @s run tag @s remove ca.has_custom_status_nullify
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_nullify
$execute as $(target) at @s if score duration= carto_event matches 21.. if entity @s[type=player] unless score @s ca.nullify_cooldown matches 1.. run effect give @s resistance 1 9 true
$execute as $(target) at @s if score duration= carto_event matches 21.. if entity @s[type=!player] unless score @s ca.nullify_cooldown matches 1.. run effect give @s resistance 1 2 true

$execute as $(target) at @s if score duration= carto_event matches 25.. if entity @s[type=player] if score @s ca.nullify_cooldown matches 25 run playsound minecraft:block.trial_spawner.about_to_spawn_item player @a[distance=..16] ~ ~ ~ 0.75 1.5
$execute as $(target) at @s if score duration= carto_event matches 25.. if entity @s[type=player] if score @s ca.nullify_cooldown matches 1 run playsound minecraft:entity.armadillo.hurt_reduced player @a[distance=..16] ~ ~ ~ 1 0.5

$execute as $(target) at @s if score duration= carto_event matches 25.. if entity @s[type=!player] if score @s ca.nullify_cooldown matches 25 run playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a[distance=..16] ~ ~ ~ 0.75 1.5
$execute as $(target) at @s if score duration= carto_event matches 25.. if entity @s[type=!player] if score @s ca.nullify_cooldown matches 1 run playsound minecraft:entity.armadillo.hurt_reduced hostile @a[distance=..16] ~ ~ ~ 1 0.5

$execute as $(target) at @s if score duration= carto_event matches 25.. if score @s ca.nullify_cooldown matches 1 positioned ~ ~0.2 ~ run function carto_event:event/custom_statuses/nullify/vfx
$execute as $(target) at @s if score duration= carto_event matches 25.. if entity @s[type=!player] if score @s ca.nullify_cooldown matches 1 positioned ~ ~1.2 ~ run function carto_event:event/custom_statuses/nullify/vfx


$execute as $(target) at @s if score duration= carto_event matches 2.. unless score @s ca.nullify_cooldown matches 1.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/nullify/use with storage carto_event current[-1].parameters
$execute as $(target) at @s if score duration= carto_event matches 2.. if score @s ca.nullify_cooldown matches 1.. run scoreboard players remove @s ca.nullify_cooldown 1

$execute as $(target) at @s store result storage carto_event current[-1].parameters.tick_count int 1 run scoreboard players get @s ca.nullify_cooldown

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.purged] run tag @s remove ca.has_custom_status_nullify
$execute as $(target) at @s if entity @s[tag=ca.purged] run return 0
return 1