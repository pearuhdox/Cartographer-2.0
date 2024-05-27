$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.318,0.110,0.588,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_gloom] run playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 2 0.75
$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_gloom] positioned ~ ~1 ~ run particle dust{color:[0.318,0.110,0.588],scale:2} ~ ~ ~ 0.25 0.25 0.25 1 10 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_gloom

$execute if score duration= carto_event matches 1..20 as $(target) at @s positioned ~ ~1 ~ run particle dust{color:[0.318,0.110,0.588],scale:2} ~ ~ ~ 0.25 0.25 0.25 1 1 normal

$execute as $(target) at @s if score duration= carto_event matches 50 run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 1 0.75

$execute if score duration= carto_event matches 1 if score $gloom_targets ca.status_var matches 1.. as $(target) at @s as @e[type=#bb:hostile,distance=..$(range),limit=$(targets),sort=nearest] at @s run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)
$execute if score duration= carto_event matches 1 if score $gloom_targets ca.status_var matches 1.. as $(target) at @s as @e[type=#bb:hostile,distance=..$(range),limit=$(targets),sort=nearest] at @s positioned ~ ~1 ~ run function carto_event:event/custom_statuses/gloom/vfx
$execute if score duration= carto_event matches 1 as $(target) at @s run tag @s remove ca.has_custom_status_gloom

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_gloom
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1