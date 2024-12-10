$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.522,0.804,0.435,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle minecraft:item_slime ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_slippery] run scoreboard players set $crash_range_test ca.slippery_val $(crash_range)
$execute if score $crash_range_test ca.slippery_val matches 1.. if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_slippery] as $(owner) at @s run function carto_event:event/custom_statuses/slippery/modify_aoe/start

$execute as $(target) at @s run tag @s remove ca.has_custom_status_slippery
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_slippery

scoreboard players set $crash_range ca.slippery_val 0
execute store result score $crash_range ca.slippery_val run data get storage carto_event current[-1].parameters.crash_range 100

$execute as $(target) at @s if score @s ca.slippery_cooldown matches 1.. unless entity @s[type=#cartographer_core:can_fly] if entity @s[tag=ca.is_slipping] unless block ~ ~-0.2 ~ #cartographer_core:can_raycast if score $crash_range ca.slippery_val matches 20.. run function carto_event:event/custom_statuses/slippery/crash/start with storage carto_event current[-1].parameters
$execute as $(target) at @s if score @s ca.slippery_cooldown matches 1.. unless entity @s[type=#cartographer_core:can_fly] if entity @s[tag=ca.is_slipping] unless block ~ ~-0.2 ~ #cartographer_core:can_raycast run tag @s remove ca.is_slipping


$execute as $(target) at @s if score @s ca.slippery_cooldown matches 1.. unless entity @s[type=#cartographer_core:can_fly] unless block ~ ~-0.2 ~ #cartographer_core:can_raycast run scoreboard players remove @s ca.slippery_cooldown 1
$execute as $(target) at @s if score @s ca.slippery_cooldown matches 1.. if entity @s[type=#cartographer_core:can_fly] run scoreboard players remove @s ca.slippery_cooldown 1

$execute as $(target) at @s if score duration= carto_event matches 2.. store result score $x ca.slippery_val run data get entity @s Motion[0] 1000
$execute as $(target) at @s if score duration= carto_event matches 2.. store result score $y ca.slippery_val run data get entity @s Motion[1] 1000
$execute as $(target) at @s if score duration= carto_event matches 2.. store result score $z ca.slippery_val run data get entity @s Motion[2] 1000

$scoreboard players set $fly_cdl ca.slippery_val $(cooldown)
scoreboard players operation $fly_cdl ca.slippery_val *= $5 ca.CONSTANT

$execute as $(target) at @s run attribute @s minecraft:safe_fall_distance modifier remove ca.slippery_fall_debuff
$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:safe_fall_distance modifier add ca.slippery_fall_debuff -2.75 add_value

$execute as $(target) at @s unless score @s ca.slippery_cooldown matches 1.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/slippery/amplify with storage carto_event current[-1].parameters

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_slippery
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_slippery
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
$execute as $(target) at @s run return 1