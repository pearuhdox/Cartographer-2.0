$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.282,0.302,0.282,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle witch ~ ~ ~ 0.2 0.2 0.2 0.5 1 normal

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_siphon_strength] store result score $siphon_strength_amt ca.status_var run data get storage carto_event current[-1].parameters.amount 100
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_siphon_strength] run scoreboard players operation $(owner) ca.siphon_strength_player += $siphon_strength_amt ca.status_var
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_siphon_strength] run playsound minecraft:block.bubble_column.whirlpool_inside hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_siphon_strength] positioned ~ ~1 ~ run function carto_event:event/custom_statuses/siphon/strength/vfx
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_siphon_strength] positioned ~ ~1 ~ positioned ^ ^ ^ facing entity $(owner) feet rotated ~ ~-5 run function carto_event:event/custom_statuses/siphon/strength/raycast_start

$scoreboard players set $(owner) ca.siphon_timer 160

$execute as $(target) at @s run tag @s remove ca.has_custom_status_siphon_strength
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_siphon_strength

$execute as $(target) at @s run attribute @s minecraft:generic.attack_damage modifier remove ca.siphon_strength
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:generic.attack_damage modifier add ca.siphon_strength -$(amount) add_multiplied_total

$execute if score duration= carto_event matches 1 as $(target) at @s store result score $siphon_strength_amt ca.status_var run data get storage carto_event current[-1].parameters.amount 100
$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players operation $(owner) ca.siphon_strength_player -= $siphon_strength_amt ca.status_var
$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players set $(owner) ca.siphon_timer 10

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_siphon_strength
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1