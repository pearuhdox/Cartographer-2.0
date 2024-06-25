$execute as $(target) at @s if entity @s[tag=ca.block_morphed] run return 0

$execute as $(target) at @s run playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 1 1.25
$execute as $(target) at @s run playsound minecraft:entity.sheep.ambient hostile @a[distance=..16] ~ ~ ~ 2 1.5
$execute as $(target) at @s run playsound minecraft:entity.chicken.egg hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
$execute as $(target) at @s positioned ~ ~1 ~ run particle entity_effect{color:[1.00,1.00,1.00,1.00]} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute as $(target) at @s positioned ~ ~1 ~ run particle poof ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal

$execute as $(target) at @s store result score @s ca.morphed_persistance run data get entity @s PersistenceRequired
$execute as $(target) at @s store result score @s ca.morphed_ai run data get entity @s NoAI

$execute as $(target) at @s if score @s ca.morphed_persistance matches 0 run data modify entity @s PersistenceRequired set value 1b
$execute as $(target) at @s if score @s ca.morphed_ai matches 0 run data modify entity @s NoAI set value 1b

data modify storage cartographer_custom_statuses:morphed data set value {}
$data modify storage cartographer_custom_statuses:morphed data.entity set value "$(target)"
$data modify storage cartographer_custom_statuses:morphed data.duration set value $(duration)
$data modify storage cartographer_custom_statuses:morphed data.speed set value $(speed)
$data modify storage cartographer_custom_statuses:morphed data.kbr set value $(kbr)
$data modify storage cartographer_custom_statuses:morphed data.percent_eff_health set value $(percent_eff_health)
$data modify storage cartographer_custom_statuses:morphed data.block_duration set value $(block_duration)
$data modify storage cartographer_custom_statuses:morphed data.tick_command set value "$(tick_command)"

$execute as $(target) at @s run function carto_event:event/custom_statuses/morphed/sheep_summon

$execute as $(target) at @s run tp @s ~ 2048 ~

$execute as $(target) at @s if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute as $(target) at @s run tag @s remove ca.has_custom_status_morphed
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_morphed

return 0